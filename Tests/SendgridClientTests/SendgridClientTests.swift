//
//  VaporTestCase.swift
//  SendgridClientTests
//
//  Created by Michael Housh on 12/9/18.
//

import XCTest
import Vapor

@testable import SendgridClient

enum SendgridTestError: Error {
    case emailNotFound
}

final class SendgridTests: XCTestCase, VaporTestCase {
    
    var app: Application!
    
    func email() throws -> Email {
        guard let email = Environment.get("SG_EMAIL") else {
            throw SendgridTestError.emailNotFound
        }
        
        let name = Environment.get("SG_NAME")
        
        return Email(email: email, name: name)
    }
    
    override func setUp() {
        perform {
            self.app = try makeApplication()
        }
    }
    
    func testClient() {
        perform {
            let sg_client = try app.make(SendgridClient.self)
            let email = try self.email()
            let senderName = email.name ?? "Test Sender Name"
            
            let personalization = Personalization(to: [email], senderName: senderName)
            
            let req = TemplateType.preQuote.request(
                personalizations: [personalization],
                from: email,
                reply_to: email
            )
            
            _ = try sg_client.send(req, on: app).wait()
            
        }
    }
}

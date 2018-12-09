//
//  VaporTestCase.swift
//  SendgridClientTests
//
//  Created by Michael Housh on 12/9/18.
//

import XCTest
import Vapor

@testable import SendgridClient


final class SendgridTests: XCTestCase, VaporTestCase {
    
    var app: Application!
    
    override func setUp() {
        perform {
            self.app = try makeApplication()
        }
    }
    
    func testClient() {
        perform {
            let sg_client = try app.make(SendgridClient.self)
            let email = Email(email: "mhoush@houshhomeenergy.com", name: "Michael Housh")
            let personalization = PreSalesPersonalization(to: [email], dynamic_template_data: PreSalesTemplateData(senderName: "Michael Housh"))
            
            let req = SendgridRequest<PreSalesPersonalization>(personalizations: [personalization], from: email, reply_to: email, template_id: "d-399fe5e4af16408f9ba34e213b41fa57")
            
            _ = try sg_client.send(req, on: app)
            
        }
    }
}

//
//  VaporTestCase.swift
//  SendgridClientTests
//
//  Created by Michael Housh on 12/9/18.
//

import Vapor
import XCTest

@testable import SendgridClient

/// Add's the `perform` helper method, to catch errors in tests.
/// Credit: Adapted from: https://github.com/gtranchedone/vapor-testing-template
extension XCTestCase {
    
    /// Fail on error.
    public func perform(_ closure: () throws -> ()) {
        do {
            try closure()
        } catch {
            XCTFail("\n\n😱 Error => \(error) 😱\n\n")
        }
    }
}


public protocol VaporTestCase {
    func makeApplication() throws -> Application
}

extension VaporTestCase {
    
    public func makeApplication() throws -> Application {
        
        let env = Environment.testing
        var services = Services.default()
        let config = Config.default()
        
        try services.register(SendgridProvider())
        
        return try Application(config: config, environment: env, services: services)
    }
}

//
//  SendgridProvider.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Vapor


public final class SendgridProvider: Provider {
    
    public init() { }
    
    public func register(_ services: inout Services) throws {
        services.register(SendgridClient.self)
    }
    
    public func didBoot(_ container: Container) throws -> EventLoopFuture<Void> {
        return .done(on: container)
    }
    
    
}

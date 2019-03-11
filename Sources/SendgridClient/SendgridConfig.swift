//
//  SendgridConfig.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


public protocol SendgridConfig {
    var api_key: String { get }
}

extension SendgridConfig where Self: ServiceType {
    
    public static var serviceSupports: [Any.Type] {
        return [SendgridConfig.self]
    }
}


public final class SendgridEnvironmentConfig: SendgridConfig {
    public let api_key: String
    private static let env_key = "SENDGRID_API_KEY"
    
    public init(_ api_key: String) {
        self.api_key = api_key
    }
}

extension SendgridEnvironmentConfig: ServiceType {
    public static func makeService(for container: Container) throws -> SendgridEnvironmentConfig {
        guard let api_key = Environment.get(env_key) else {
            throw SendgridError.apiKeyNotFound
        }
        return SendgridEnvironmentConfig(api_key)
    }
}

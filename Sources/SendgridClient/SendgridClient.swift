//
//  SendgridClient.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Vapor

/// A vapor service responsible for sending requests to the Sendgrid API.
public final class SendgridClient {
    
    public let api_key: String
    private let url: String = "https://api.sendgrid.com/v3"
    
    public init() throws {
        guard let api_key = Environment.get("SG_API_KEY") else {
            throw SendgridError.apiKeyNotFound
        }
        
        self.api_key = api_key
    }
    
    private func url(for req: SendgridRequest) -> String {
        return "\(url)/\(req.path)"
    }
    
    public func send<R>(_ req: R, on worker: Container) throws -> Future<Response> where R: SendgridRequest, R: Content {
        let client = try worker.make(Client.self)
        var headers = HTTPHeaders()
        headers.bearerAuthorization = BearerAuthorization(token: api_key)
        return client.post(url(for: req), headers: headers) { request in
            try request.content.encode(req)
        }
    }
}

extension SendgridClient: ServiceType {
    
    public static func makeService(for worker: Container) throws -> SendgridClient {
        return try SendgridClient()
    }
}

//
//  SendgridClient.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Vapor


public final class SendgridClient {
    public let api_key: String
    private let url: String = "https://api.sendgrid.com/v3/mail/send"
    
    public init() throws {
        guard let api_key = Environment.get("SG_API_KEY") else {
            throw SendgridError.apiKeyNotFound
        }
        
        self.api_key = api_key
    }
    
    public func send<P>(_ req: SendgridRequest<P>, on worker: Container) throws -> Future<Void> where P: PersonalizationRepresentable {
        let client = try worker.make(Client.self)
        var headers = HTTPHeaders()
        headers.bearerAuthorization = BearerAuthorization(token: api_key)
        return client.put(url, headers: headers) { request in
            try request.content.encode(req)
        }.map { _ in
            return
        }
        
    }
}

extension SendgridClient: ServiceType {
    
    public static func makeService(for worker: Container) throws -> SendgridClient {
        return try SendgridClient()
    }
}

//
//  SendgridRequest.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor

public protocol SendgridRequestRepresentable {
    
}


public struct SendgridRequest: Content {
    public let personalizations: [Personalization]
    public let from: Email
    public let reply_to: Email
    public let template_id: String
}


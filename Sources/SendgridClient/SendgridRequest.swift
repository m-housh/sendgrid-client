//
//  SendgridRequest.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor


public struct SendgridRequest<P>: Content where P: PersonalizationRepresentable {
    
    public let personalizations: [P]
    public let from: Email
    public let reply_to: Email
    public let template_id: String
    
}


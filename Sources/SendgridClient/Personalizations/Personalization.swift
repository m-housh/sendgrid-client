//
//  Personalization.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor




/**
 # Personalization
 
 The object used to personalize a sendgrid email request.
 
 */
public struct Personalization: PersonalizationRepresentable {
    
    public let to: [Email]
    public let cc: [Email]?
    public let bcc: [Email]?
    public let subject: String?
    public let headers: [String:String]?
    public let substitutions: [String:String]?
    public let custom_args: [String:String]?
    public let send_at: Date?
    
    public init(_ to: Email..., cc: [Email]? = nil,
                bcc: [Email]? = nil, subject: String? = nil,
                headers: [String:String]? = nil,
                substitutions: [String:String]? = nil,
                custom_args: [String:String]? = nil,
                send_at: Date? = nil) {
        
        self.to = to
        self.cc = cc
        self.bcc = bcc
        self.subject = subject
        self.headers = headers
        self.substitutions = substitutions
        self.custom_args = custom_args
        self.send_at = send_at
    }
}






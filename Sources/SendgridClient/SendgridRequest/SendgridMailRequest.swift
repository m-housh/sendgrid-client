//
//  SendgridRequest.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor


/// Representation of a request sent to the Sendgrid API.
public struct SendgridMailRequest: SendgridRequest, Content {
    
    public let path: String = "mail/send"
    
    public let personalizations: [Personalization]
    public let from: Email
    public let reply_to: Email?
    public let subject: String
    public let content: [[String:String]]
    public let attachments: [Attachment]?
    public let template_id: String?
    public let sections: [String:String]?
    public let headers: [String:String]?
    public let categories: [String]?
    public let custom_args: [String:String]?
    public let send_at: Date?
    public let batch_id: String?
    public let asm: Asm?
    public let ip_pool_name: String?
    public let mail_settings: MailSettings?
    public let tracking_settings: TrackingSettings?
    
    
    public init(_ personalizations: Personalization...,
                from: Email,
                subject: String,
                content: [[String:String]] = [],
                reply_to: Email? = nil,
                attachments: [Attachment]? = nil,
                template_id: String? = nil,
                sections: [String:String]? = nil,
                headers: [String:String]? = nil,
                categories: [String]? = nil,
                custom_args: [String:String]? = nil,
                send_at: Date? = nil,
                batch_id: String? = nil,
                asm: Asm? = nil,
                ip_pool_name: String? = nil,
                mail_settings: MailSettings? = nil,
                tracking_settings: TrackingSettings? = nil) {
        
        self.personalizations = personalizations
        self.from = from
        self.subject = subject
        self.content = content
        self.reply_to = reply_to
        self.attachments = attachments
        self.template_id = template_id
        self.sections = sections
        self.headers = headers
        self.categories = categories
        self.custom_args = custom_args
        self.send_at = send_at
        self.batch_id = batch_id
        self.asm = asm
        self.ip_pool_name = ip_pool_name
        self.mail_settings = mail_settings
        self.tracking_settings = tracking_settings
    }
    
}


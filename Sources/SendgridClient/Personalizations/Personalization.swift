//
//  Personalization.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor


public struct Personalization: Content {
    
    public let to: [Email]
    public let dynamic_template_data: TemplateData
    
    /*
    public init(to emails: [Email], data: TemplateData) {
        self.to = emails
        self.dynamic_template_data = data
    }*/
    
    public init(to emails: [Email], senderName: String) {
        self.to = emails
        self.dynamic_template_data = TemplateData(senderName: senderName)
    }
}






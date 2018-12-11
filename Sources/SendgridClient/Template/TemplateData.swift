//
//  TemplateData.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Vapor

/// Common template information needed for dynamic templates.
public struct TemplateData: Content {
    
    public var senderName: String
    
    public init(senderName: String) {
        self.senderName = senderName
    }
}

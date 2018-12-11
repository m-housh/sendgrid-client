//
//  TemplateData.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Vapor

public struct TemplateData: Content {
    
    public var senderName: String
    
    public init(senderName: String) {
        self.senderName = senderName
    }
}

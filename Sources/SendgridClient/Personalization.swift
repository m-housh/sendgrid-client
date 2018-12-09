//
//  Personalization.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor

public protocol TemplateDataRepresentable { }

public protocol PersonalizationRepresentable: Content {
    associatedtype TemplateData: TemplateDataRepresentable
    
    var to: [Email] { get }
    var dynamic_template_data: TemplateData { get }
}

public struct PreSalesTemplateData: TemplateDataRepresentable, Content {
    
    public let senderName: String
}

public struct PreSalesPersonalization: PersonalizationRepresentable {
    
    public typealias TemplateData = PreSalesTemplateData
    
    public let to: [Email]
    public let dynamic_template_data: PreSalesTemplateData
}


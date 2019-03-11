//
//  PersonalizationRepresentable.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor

/**
 # PersonalizationRepresentable
 
 The interface to sendgrid email personalization object.
 
 */
public protocol PersonalizationRepresentable {
    
    var to: [Email] { get }
    var cc: [Email]? { get }
    var bcc: [Email]? { get }
    var subject: String? { get }
    var headers: [String:String]? { get }
    var substitutions: [String:String]? { get }
    var custom_args: [String:String]? { get }
    var send_at: Date? { get }
    
}

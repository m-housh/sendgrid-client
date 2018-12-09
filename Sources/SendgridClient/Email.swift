//
//  Email.swift
//  Async
//
//  Created by Michael Housh on 12/8/18.
//

import Vapor

public struct Email: Content {
    public let email: String
    public let name: String?
    
    public init(email: String, name: String?) {
        self.email = email
        self.name = name
    }
}


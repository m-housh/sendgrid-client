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
}


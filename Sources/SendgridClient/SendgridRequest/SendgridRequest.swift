//
//  SendgridRequest.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


public protocol SendgridRequest {
    var path: String { get }
}

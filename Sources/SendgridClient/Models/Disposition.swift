//
//  Disposition.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


/**
 # Disposition
 
 Used with *Attachment* to tell how it willl be displayed
 in an email.
 
 */
public enum Disposition {
    case attachment
    case inline
    
    public init(_ string: String) {
        switch string {
        case "inline":
            self = .inline
        default:
            self = .attachment
        }
    }
}

extension Disposition: CustomStringConvertible {
    public var description: String {
        switch self {
        case .inline:
            return "inline"
        case .attachment:
            return "attachment"
        }
    }
}

extension Disposition: Content {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)
        self.init(string)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(description)
    }
}

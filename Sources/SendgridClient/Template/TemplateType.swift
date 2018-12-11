//
//  TemplateType.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Foundation


public enum TemplateType {
    case preQuote
}

extension TemplateType {
    
    var template_id: String {
        switch self {
        case .preQuote:
            return "d-399fe5e4af16408f9ba34e213b41fa57"
        }
    }
    
    func request(personalizations: [Personalization], from: Email, reply_to: Email) -> SendgridRequest {
        
        return SendgridRequest(
            personalizations: personalizations,
            from: from,
            reply_to: reply_to,
            template_id: template_id
        )
    }
}

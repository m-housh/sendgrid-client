//
//  TemplateType.swift
//  SendgridClient
//
//  Created by Michael Housh on 12/9/18.
//

import Foundation


/// The different template types available.
public enum TemplateType {
    case preQuote
    case preSalesVisit
    case postService
}

extension TemplateType {
    
    /// The Sendgrid template id for the template.
    private var template_id: String {
        switch self {
        case .preQuote:
            return "d-399fe5e4af16408f9ba34e213b41fa57"
        case .preSalesVisit:
            return "d-c84cf663fdb844bc8947b87e38122946"
        case .postService:
            return "d-57d634c568134942bc251681b29d6dc7"
        }
    }
    
    /// Builds a `SendgridRequest` for the template type.
    public func request(personalizations: [Personalization], from: Email, reply_to: Email) -> SendgridRequest {
        
        return SendgridRequest(
            personalizations: personalizations,
            from: from,
            reply_to: reply_to,
            template_id: template_id
        )
    }
}

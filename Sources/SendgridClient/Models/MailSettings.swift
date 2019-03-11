//
//  MailSettings.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


public struct Bcc: Content {
    public let enable: Bool?
    public let email: Email
}

public struct BypassListManagement: Content {
    public let enable: Bool?
}

public struct Footer: Content {
    public let enable: Bool?
    public let text: String?
    public let html: String?
}

public struct SandboxMode: Content {
    public let enable: Bool?
}

public struct SpamCheck: Content {
    public let enable: Bool?
    public let threshold: Int?
    public let post_to_url: String?
}

public struct MailSettings: Content {
    
    public let bcc: Bcc?
    public let bypass_list_management: BypassListManagement?
    public let footer: Footer?
    public let sandbox_mode: SandboxMode?
    public let spam_check: SpamCheck?
    
}

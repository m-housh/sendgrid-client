//
//  Attachment.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


public struct Attachment: Content {
    
    /// The base-64 encoded content of the attachmentt
    public let content: String
    
    /// The mime-type of the file.
    public let type: String?
    
    /// The filename of the attachment.
    public let filename: String
    
    /// How the attachment is displayed in the email
    public let disposition: Disposition?
    
    /// Id of the content, this is used when the attachment
    /// disposition is *inline* and the attachment is used
    /// in the content of the email.
    public let content_id: String?
    
    init(content: String, filename: String,
         type: String? = nil, disposition: Disposition? = nil,
         content_id: String? = nil) {
        self.content = content
        self.filename = filename
        self.type = type
        self.disposition = disposition
        self.content_id = content_id
    }
}

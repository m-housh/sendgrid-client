//
//  TrackingSettings.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


public struct ClickTracking: Content {
    public let enable: Bool?
    public let enable_text: Bool?
}

public struct OpenTracking: Content {
    public let enable: Bool?
    public let substitution_tag: String?
}

public struct SubscriptionTracking: Content {
    public let enable: Bool?
    public let text: String?
    public let html: String?
    public let substitution_tag: String?
}

public struct GAnalytics: Content {
    public let enable: Bool?
    public let utm_source: String?
    public let utm_medium: String?
    public let utm_term: String?
    public let utm_content: String?
    public let utm_campaign: String?
}

public struct TrackingSettings: Content {
    
    public let click_tracking: ClickTracking?
    public let open_tracking: OpenTracking?
    public let subscription_tracking: SubscriptionTracking?
    public let ganalytics: GAnalytics?
}

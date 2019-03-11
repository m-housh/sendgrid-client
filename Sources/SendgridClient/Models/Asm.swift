//
//  Asm.swift
//  SendgridClient
//
//  Created by Michael Housh on 3/11/19.
//

import Vapor


/**
 # Asm
 
 An object allowing you to specify how to handle unsubscribes.
 
 */
public struct Asm: Content {
    
    let group_id: Int
    let groups_to_display: [Int]?
    
    init(group_id: Int, groups_to_display: [Int]? = nil) {
        self.group_id = group_id
        self.groups_to_display = groups_to_display
    }
}

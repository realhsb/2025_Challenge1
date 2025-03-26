//
//  NavigationDestination.swift
//  FireFly
//
//  Created by Soop on 3/27/25.
//

import Foundation

import Foundation

enum CollectionDestination: Hashable, Identifiable {
    case profileView(profile: Profile)
    
    var id: Int {
            hashValue
        }
}

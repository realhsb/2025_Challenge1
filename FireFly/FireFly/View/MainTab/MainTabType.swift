//
//  MainTabType.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

enum MainTabType: String, CaseIterable, CustomStringConvertible {
    case myProfile
    case collcetion
    
    var description: String {
        switch self {
        case .myProfile:
            return "프로필"
            
        case .collcetion:
            return "컬렉션"
        }
    }
    
    var index: Int {
        switch self {
        case .myProfile:
                .zero
        case .collcetion:
            1
        }
    }
}

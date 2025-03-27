//
//  ColorType.swift
//  FireFly
//
//  Created by Soop on 3/27/25.
//

import SwiftUI
enum ColorType: String, Codable, CaseIterable {
    case memoRed
    case memoBlue
    case memoPink
    case memoGreen
    case secondary
    
    var backgroundColor: Color {
        switch self {
        case .memoRed: return Color.memoRed
        case .memoBlue: return Color.memoBlue
        case .memoPink: return Color.memoPink
        case .memoGreen: return Color.memoGreen
        case .secondary: return Color.secondary
        }
    }
}

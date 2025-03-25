//
//  TabModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct TabModel {
    private(set) var tab: Tab
    var size: CGSize = .zero
    var minX: CGFloat = .zero
    
    enum Tab: String, CaseIterable {
        case myprofile = "프로필"
        case collection = "컬렉션"
    }
}

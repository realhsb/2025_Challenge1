//
//  MainTabViewModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

@Observable
class MainTabViewModel {
    var selectedTabItem: Int = 0
    var selectedTabIndex: Int = .zero
//    var selectedTabType: MainTabType = .myProfile
    
    var container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
}

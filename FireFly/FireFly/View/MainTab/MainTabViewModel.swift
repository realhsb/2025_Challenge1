//
//  MainTabViewModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

@Observable
class MainTabViewModel {
//    var selectedTabItem: Int = 0
//    var selectedTabIndex: Int = .zero
    
    enum Action {
        case selectTab(MainTabType)
    }
    
    var selectedTabType: MainTabType = .myProfile
    
    var container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func send(action: Action) {
        switch action {
        case .selectTab(let type):
            self.container.tabs = type
            print(type)
        }
    }
}

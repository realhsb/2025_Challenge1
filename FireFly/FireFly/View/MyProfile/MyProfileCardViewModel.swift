//
//  MyProfileCardViewModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation
import Combine
import SwiftUI

@Observable
class MyProfileCardViewModel: ObservableObject {
    
    enum Action {
        case getMyProfile
    }
    
    private var container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func send(action: Action) {
        switch action {
        case .getMyProfile:
            container.services.myProfileService.loadmyProfile()
        }
    }
}

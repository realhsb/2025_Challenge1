//
//  DIContainer.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    @Published var tabs: MainTabType = .myProfile
    var navigationRouter: NavigationRoutable & ObservableObjectSettable
    
    init(
        services: ServiceType,
        navigationRouter: NavigationRoutable & ObservableObjectSettable = NavigationRouter()
    ) {
        self.services = services
        self.navigationRouter = navigationRouter
        self.navigationRouter.setObjectWillChange(objectWillChange)

    }
}

extension DIContainer {
    static var stub: DIContainer {
        .init(services: StubService())
    }
}


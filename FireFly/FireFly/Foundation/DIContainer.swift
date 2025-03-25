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
    
    init(
        services: ServiceType
    ) {
        self.services = services
    }
}

extension DIContainer {
    static var stub: DIContainer {
        .init(services: StubService())
    }
}


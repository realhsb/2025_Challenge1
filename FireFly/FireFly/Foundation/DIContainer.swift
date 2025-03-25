//
//  DIContainer.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    var tabs: Int = 0
    
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


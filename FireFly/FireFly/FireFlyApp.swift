//
//  FireFlyApp.swift
//  FireFly
//
//  Created by Soop on 3/24/25.
//

import SwiftUI

@main
struct FireFlyApp: App {

    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {

        WindowGroup {
            MainTabView(mainTabViewModel: MainTabViewModel(container: container))
                .environmentObject(container)
        }
    }
}

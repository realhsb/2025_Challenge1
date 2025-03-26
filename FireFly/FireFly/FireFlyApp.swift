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
//            NavigationStack(path: $container.pathModel.paths) {
                MainTabView(mainTabViewModel: MainTabViewModel(container: container))
                    .environmentObject(container)
//                    .navigationDestination(for: PathType.self) { path in
//                        switch path {
//                        case .profileView(let profile):
//                            ProfileCardView(profile: profile)
//                        }
//                    }
            }
//        }
    }
}

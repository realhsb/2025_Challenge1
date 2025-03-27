//
//  CollectionViewModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

@Observable
class ProfileViewModel {
    
    enum Action {
        case goToProfile(Profile)
    }

    private var container: DIContainer
    
    var collectionDestination: CollectionDestination?
    
    var profile: Profile = .profileStub01
    var memberList: [Profile] = [.profileStub01, .profileStub02, .profileStub03, .profileStub04, .profileStub05, .profileStub06, .profileStub07, .profileStub08, .profileStub09, .profileStub10]
    var isPresentProfile: Bool = false
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func send(action: Action) {
        switch action {
        case let .goToProfile(profile):
            print("goToProfile")
            print(profile)
//            print("🔹 현재 paths: \(container.pathModel.paths)")
        }
    }
}

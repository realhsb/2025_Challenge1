//
//  CollectionViewModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

@Observable
class CollectionViewModel {
    
    enum Action {
        case goToProfile(Profile)
    }

    private var container: DIContainer
    
    var collectionDestination: CollectionDestination?
    
    var memberList: [Profile] = [.profileStub01, .profileStub02, .profileStub03, .profileStub04, .profileStub05]
    var isPresentProfile: Bool = false
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func send(action: Action) {
        switch action {
        case let .goToProfile(profile):
            container.pathModel.paths = [.profileView(profile)]
            print("goToProfile")
            print(profile)
            print("🔹 현재 paths: \(container.pathModel.paths)")
        }
    }
}

//
//  CollectionViewModel.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

@Observable
class CollectionViewModel {

    private var container: DIContainer
    var memberList: [Profile] = [.profileStub01, .profileStub02, .profileStub03, .profileStub04, .profileStub05]
    
    init(container: DIContainer) {
        self.container = container
    }
}

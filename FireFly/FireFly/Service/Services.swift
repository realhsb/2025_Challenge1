//
//  Services.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

protocol ServiceType {
    var myProfileService: MyProfileServiceType { get set }
}

class Services: ServiceType {
    var myProfileService: MyProfileServiceType
    
    init() {
        self.myProfileService = MyProfileService()
    }
}

class StubService: ServiceType {
    var myProfileService: MyProfileServiceType = StubMyProfileService()
}

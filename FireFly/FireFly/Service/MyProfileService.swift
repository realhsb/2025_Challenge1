//
//  MyProfileService.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

protocol MyProfileServiceType {
    func loadmyProfile()
}

class MyProfileService: MyProfileServiceType {
    func loadmyProfile() { }
}

class StubMyProfileService: MyProfileServiceType {
    func loadmyProfile() { }
}

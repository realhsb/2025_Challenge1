//
//  Profile.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

struct Profile: Codable {
    let nickname: String?
    let image: String?
    let tags: [String?]?
    let description: String?
}

extension Profile {
    static let profileStub01: Profile = .init(nickname: "Soop", image: "", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Soop입니다.")
    static let profileStub02: Profile = .init(nickname: "Ian", image: "", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Ian입니다.")
    static let profileStub03: Profile = .init(nickname: "Rohd", image: "", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Ian입니다.")
    static let profileStub04: Profile = .init(nickname: "Weaver", image: "", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Weaver입니다.")
    static let profileStub05: Profile = .init(nickname: "Zani", image: "", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.")
}

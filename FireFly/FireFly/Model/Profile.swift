//
//  Profile.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation

struct Profile: Codable, Hashable, Identifiable {
    var id: String = UUID().uuidString
    let nickname: String?
    let image: String?
    let tags: [String]?
    let description: String?
    var isOpened: Bool?
    var comments: [Comment]?
}

struct Comment: Codable, Hashable, Identifiable {
    var id = UUID()
    let text: String
}

extension Profile {
    static let profileStub01: Profile = .init(nickname: "Soop", image: "Soop", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Soop입니다.", isOpened: true, comments: [.init(text: "숩 파이팅")])
    static let profileStub02: Profile = .init(nickname: "Ian", image: "Ian", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Ian입니다.", isOpened: true, comments: [.init(text: "숩 파이팅")])
    static let profileStub03: Profile = .init(nickname: "Rohd", image: "Rohd", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Ian입니다.", isOpened: true, comments: [.init(text: "숩 파이팅")])
    static let profileStub04: Profile = .init(nickname: "Weaver", image: "Weaver", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Weaver입니다.", isOpened: true, comments: [.init(text: "숩 파이팅")])
    static let profileStub05: Profile = .init(nickname: "Zani", image: "Zani", tags: ["위시 좋아해요💚", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: true, comments: [.init(text: "숩 파이팅")])
    static let profileStub06: Profile = .init(nickname: "sfa", image: "Soop-Shadow", tags: ["???1", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅")])
    static let profileStub07: Profile = .init(nickname: "asfafs", image: "Ian-Shadow", tags: ["???2", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅")])
    static let profileStub08: Profile = .init(nickname: "asfasf", image: "Rohd-Shadow", tags: ["???3", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅")])
    static let profileStub09: Profile = .init(nickname: "asfas", image: "Zani-Shadow", tags: ["???4", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅")])
    static let profileStub10: Profile = .init(nickname: "asfasfsa", image: "Weaver-Shadow", tags: ["???5", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅")])
}

//
//  Profile.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import Foundation
import SwiftUI

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
    let backgroundColor: ColorType
}


extension Profile {
    static let profileStub01: Profile = .init(nickname: "Soop", image: "Soop", tags: ["위시 좋아해요💚", "밥 먹으려고 운동합니다", "기숙사🛏️", "인형 & 키링 덕후🐰"], description: "안녕하세요! 저는 Soop입니다.", isOpened: true, comments: [.init(text: "숩 파이팅", backgroundColor: .memoBlue)])
    static let profileStub02: Profile = .init(nickname: "Ian", image: "Ian", tags: ["야구 볼 사람 ⚾️", "집에 가고 싶어요🔥", "기숙사🛏️", "배고파요 😱"], description: "안녕하세요! 저는 Ian입니다.", isOpened: true, comments: [.init(text: "이안 파이팅", backgroundColor: .memoBlue)])
    static let profileStub03: Profile = .init(nickname: "Rohd", image: "Rohd", tags: ["경기도 용인에서 왔어요!🐲", "말이 많고 빨라요 🐎 📣 ", "기숙사🛏️", "로호드 아니고 로드입니다!😉"], description: "안녕하세요! 로드입니다.", isOpened: true, comments: [.init(text: "로드 파이팅", backgroundColor: .memoBlue)])
    static let profileStub04: Profile = .init(nickname: "Weaver", image: "Weaver", tags: ["학식 팟 구함🤤", "내향형 인간", "새로운 툴 공부❤️", "커피챗 환영☕️"], description: "대구에서 온 위버입니다 :)", isOpened: true, comments: [.init(text: "위버 파이팅", backgroundColor: .memoBlue)])
    static let profileStub05: Profile = .init(nickname: "Zani", image: "Zani", tags: ["러닝팟 구함!!🏃🏻‍️", "운동", "같이 밥 먹을 사람!😭", "생활관 문의는 팀즈로 주세요!😎"], description: "부산 해운대의 자랑 자니입니다 :)", isOpened: true, comments: [.init(text: "자니 파이팅", backgroundColor: .memoBlue)])
    static let profileStub06: Profile = .init(nickname: "sfa", image: "Soop-Shadow", tags: ["???1", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅", backgroundColor: .memoBlue)])
    static let profileStub07: Profile = .init(nickname: "asfafs", image: "Ian-Shadow", tags: ["???2", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅", backgroundColor: .memoBlue)])
    static let profileStub08: Profile = .init(nickname: "asfasf", image: "Rohd-Shadow", tags: ["???3", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅", backgroundColor: .memoBlue)])
    static let profileStub09: Profile = .init(nickname: "asfas", image: "Zani-Shadow", tags: ["???4", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅", backgroundColor: .memoBlue)])
    static let profileStub10: Profile = .init(nickname: "asfasfsa", image: "Weaver-Shadow", tags: ["???5", "운동", "기숙사🛏️", "반가워요"], description: "안녕하세요! 저는 Zani입니다.", isOpened: false, comments: [.init(text: "숩 파이팅", backgroundColor: .memoBlue)])
}

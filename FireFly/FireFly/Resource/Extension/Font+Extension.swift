//
//  Font+Extension.swift
//  FireFly
//
//  Created by Soop on 3/27/25.
//

import SwiftUI

extension Font {
    
    // Bold
    static let pretendardBold30: Font = .custom("Pretendard-Bold", size: 30)
    static let pretendardBold22: Font = .custom("Pretendard-Bold", size: 22)
    static let pretendardBold20: Font = .custom("Pretendard-Bold", size: 20)
    static let pretendardBold18: Font = .custom("Pretendard-Bold", size: 18)
    static let pretendardBold16: Font = .custom("Pretendard-Bold", size: 16)
    static let pretendardBold12: Font = .custom("Pretendard-Bold", size: 12)
    
    // Medium
    static let pretendardMedium24: Font = .custom("Pretendard-Medium", size: 24)
    static let pretendardMedium18: Font = .custom("Pretendard-Medium", size: 18)
    static let pretendardMedium14: Font = .custom("Pretendard-Medium", size: 14)
    
    // Regular
    static let pretendardRegular16: Font = .custom("Pretendard-Regular", size: 16)
    static let pretendardRegular14: Font = .custom("Pretendard-Regular", size: 14)
    static let pretendardRegular12: Font = .custom("Pretendard-Regular", size: 12)
    static let pretendardRegular10: Font = .custom("Pretendard-Regular", size: 10)
    
    
}


/// 폰트가 추가되었는지 확인
func checkFontFile() {
    for fontFamily in UIFont.familyNames {
        for fontName in UIFont.fontNames(forFamilyName: fontFamily) {
            print(fontName)
        }
    }
}

/// 프레임을 폰트 높이에 맞추기
func heightForFontSize(_ size: CGFloat) -> CGFloat {
    let font = UIFont.systemFont(ofSize: size)
    return font.capHeight
}

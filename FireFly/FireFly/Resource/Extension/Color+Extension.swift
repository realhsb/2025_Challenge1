//
//  Color+Extension.swift
//  FireFly
//
//  Created by Soop on 3/26/25.
//

import SwiftUI


extension Color {

    // basic
    static let basicBlack = Color(hex: "000000")
    static let basicWhite = Color(hex: "FFFFFF")
    
    static let primary = Color(hex: "D2CFFF")
    static let primaryLight = Color(hex: "EEEDFF")
    static let primaryDark = Color(hex: "423C99")
    static let secondary = Color(hex: "FBC558")
    static let strokeGray = Color(hex: "8E98A8")
}

public extension Color {

    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

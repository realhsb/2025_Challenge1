//
//  TextField+Extension.swift
//  FireFly
//
//  Created by Soop on 3/27/25.
//

import SwiftUI

struct CommonTextfieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        ZStack {
            Rectangle()
                .foregroundStyle(Color.basicWhite)
                .frame(width: .infinity, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.strokeGray, lineWidth: 0.5)
                        .shadow(color: Color.shadowGray, radius: 1)
                }
            
            // 텍스트필드
            configuration
                .font(.pretendardMedium18)
                .padding()
        }
    }
}

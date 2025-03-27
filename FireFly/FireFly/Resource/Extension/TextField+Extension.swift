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
                .foregroundColor(Color.green)
                .cornerRadius(8)
                .frame(height: 46)
            
            // 텍스트필드
            configuration
                .font(.title)
                .padding()
        }
    }
}

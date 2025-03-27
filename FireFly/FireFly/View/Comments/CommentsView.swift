//
//  BoardView.swift
//  FireFly
//
//  Created by Soop on 3/26/25.
//

import SwiftUI

struct CommentsView: View {
    
    
    
    var body: some View {
        VStack {
            ZStack {
                Color.basicWhite
                
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.strokeGray, lineWidth: 1)
                    }
                    .shadow(color: .shadowGray, radius: 3)
                    
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                    .frame(height: 650)
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    CommentsView()
}

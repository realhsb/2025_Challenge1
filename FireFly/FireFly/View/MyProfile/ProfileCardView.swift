//
//  ProfileCardView.swift
//  FireFly
//
//  Created by Soop on 3/26/25.
//

import SwiftUI

struct ProfileCardView: View {
    
    var profile: Profile
    @Environment(\.dismiss) var dismiss
    @State var isFlipped = false
    @State private var cardSize: CGSize = .zero // 카드 크기 저장 변수
    
    var body: some View {
        NavigationView {
            ZStack {
                if isFlipped {
                    CommentsView()
                } else {
                    VStack {
                        cardView
                        Spacer()
                    }
                }
            }
            .scaleEffect(x: isFlipped ? -1 : 1)
                        
            .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: -1, z: 0))
            .animation(.easeInOut(duration: 0.6), value: isFlipped)
                        
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                }
            }
        }
    }
}
    
    @ViewBuilder
    var cardView: some View {
//        GeometryReader { geometry in
            VStack(spacing: 16) {
                editButtonView
                profileImageView
                nicknameView
                tagsView
                divider
                descriptionView
            }
            .frame(height: 650)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.basicWhite)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.strokeGray, lineWidth: 1)
            }
            .shadow(color: .shadowGray, radius: 3)
            .padding(.top, 10)
            .padding(.horizontal, 20)
    }
    
    @ViewBuilder
    var profileImageView: some View {
        Circle()
        
            .frame(width: 230, height: 230)
    }
    
    var editButtonView: some View {
        HStack {
            Spacer()
            Button {
                isFlipped.toggle()
            } label: {
                Text("코멘트")
                    .foregroundStyle(Color.primaryDark)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 4)
                    .background(Color.primaryLight)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        }
    }
    
    var nicknameView: some View {
        Text(self.profile.nickname ?? "")
            .foregroundStyle(Color.primaryDark)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 12)
            .background(Color.primary)
            .clipShape(RoundedRectangle(cornerRadius: 99))
            .overlay {
                RoundedRectangle(cornerRadius: 99)
                    .stroke(Color.strokeGray, lineWidth: 1)
            }
    }
    
    @ViewBuilder
    var tagsView: some View {
        VStack {
            if let tags = self.profile.tags {
                    ForEach(tags.indices, id: \.self) { index in
                        let tag = tags[index]
                        
                        if index.isMultiple(of: 2) {
                            tagItem(tag, true) // 0, 2, 4... 번째 태그
                        } else {
                            tagItem(tag, false)  // 1, 3, 5... 번째 태그
                        }
                    }
                }
        }
    }
    
    @ViewBuilder
    func tagItem(_ tag: String, _ isLeft: Bool)-> some View {
        if isLeft {
            HStack {
                Text(tag)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                    .foregroundStyle(Color.basicWhite)
                    .background(Color.primaryDark)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.leading, 1)
                    .overlay(alignment: .bottomLeading) {
                        Image(.chatLeft)
                            .frame(width: 10, height: 10)
                            .padding(.bottom, 1)
                    }
                Spacer()
            }
        } else {
            HStack {
                Spacer()
                Text(tag)
                    .foregroundStyle(Color.basicWhite)
                    .background(Color.secondary)
                
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                    .foregroundStyle(Color.basicWhite)
                    .background(Color.secondary)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.trailing, 1)
                    .overlay(alignment: .bottomTrailing) {
                        Image(.chatRight)
                            .frame(width: 10, height: 10)
                            .padding(.bottom, 1)
                    }
            }
        }
    }
    
    var divider: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(Color.strokeGray)
    }
    
    @ViewBuilder
    var descriptionView: some View {
        Text(self.profile.description ?? "")
//            .frame(maxWidth: .infinity)
            .foregroundStyle(Color.primaryDark)
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .topLeading) // 왼쪽 위 정렬
            .multilineTextAlignment(.trailing) // 여러 줄 정렬 시 왼쪽 정렬
            .lineLimit(2)
            .background(Color.primaryLight)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.strokeGray, lineWidth: 1)
            }
        
    }
}

#Preview {
    ProfileCardView(profile: .profileStub01)
}

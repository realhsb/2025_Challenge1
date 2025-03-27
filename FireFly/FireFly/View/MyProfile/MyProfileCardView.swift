//
//  MyProfileCardView.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct MyProfileCardView: View {
    
    @EnvironmentObject var container: DIContainer
    var viewModel: ProfileViewModel
    
    var body: some View {
        cardView
    }
    
    @ViewBuilder
    var cardView: some View {
        ZStack(alignment: .top) {
            Color.basicWhite
            VStack(spacing: 16) {
                editButtonView
                
                // 프로필 사진
                profileImageView
                
                // 닉네임
                nicknameView
                
                // 채팅 태그 4가지
                tagsView
                
                // 구분선
                divider
                
                // 한줄소개
                descriptionView
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.basicWhite) // ⬅️ 여기에 배경을 설정
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.strokeGray, lineWidth: 1)
            }
            .shadow(color: .shadowGray, radius: 3)
            .padding(.top, 10)
            .padding(.horizontal, 20)
            Spacer()
        }
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
                
            } label: {
                Text("편집")
                    .foregroundStyle(Color.primaryDark)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 4)
                    .background(Color.primaryLight)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        }
    }
    
    var nicknameView: some View {
        Text(self.viewModel.profile.nickname ?? "")
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
            if let tags = viewModel.profile.tags {
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
        Text(self.viewModel.profile.description ?? "")
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




struct MyProfileCardView_Previews: PreviewProvider {
    
    static var container: DIContainer = .stub
    
    static var previews: some View {
        MyProfileCardView(viewModel: ProfileViewModel(container: container))
            .environmentObject(container)
    }
}

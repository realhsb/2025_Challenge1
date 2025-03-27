//
//  BoardView.swift
//  FireFly
//
//  Created by Soop on 3/26/25.
//

import SwiftUI

struct CommentsView: View {
    
    var viewModel: ProfileViewModel
    @State var profile: Profile
    @Binding var isFlipped: Bool
    var isMine: Bool = false
    @State var isEdit: Bool = false
    @State private var newComment: String = ""
//    let ramdomBackgroundColor = [Color.secondary, Color.memoRed, Color.memoBlue,  Color.memoPink, Color.memoGreen]
    @State var randomColor: [ColorType] = [ColorType.memoBlue, .memoGreen, .memoBlue, .memoRed]
    
    var body: some View {
        ZStack {
            Color.basicWhite
            VStack(spacing: 5) {
                
                HStack(alignment: .top, spacing: 0) {
                    Text("\(profile.nickname!)의 보드 💕")
                        .font(.pretendardBold30)
                        .foregroundStyle(Color.primaryDark)
                        
                    Spacer()
                    if !isMine {
                        editButtonView
                    }
                        
                }
                .padding(18)
                
                GeometryReader { geometry in
                    ForEach(profile.comments ?? []) { comment in
                        Text(comment.text)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .font(.pretendardMedium24)
                            .foregroundStyle(Color.primaryDark)
                            .background(self.randomColor[Int.random(in: 0..<self.randomColor.count)].backgroundColor)
                            .position(
                                x: CGFloat.random(in: 40...(geometry.size.width - 40)),
                                y: CGFloat.random(in: 80...(geometry.size.height - 80))
                            )
                    }
                }
                
                if !self.isMine {
                    HStack {
                        Spacer()
                        Button {
                            self.isEdit.toggle()
                        } label: {
                            Image(systemName: "pencil.line")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(15)
                                .foregroundStyle(Color.primaryDark)
                                .background(Color.primaryLight)
                                
                        }
                        .clipShape(Circle())
                        .padding(20)
                        
                    }
                }
            }
            Spacer()
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.strokeGray, lineWidth: 1)
        }
        .shadow(color: .shadowGray, radius: 3)
        .padding(.horizontal, 20)
        .frame(height: 670)
        .sheet(isPresented: $isEdit) {
            editView
                .presentationDetents([.medium])
        }
        
    }
    
    var editButtonView: some View {
        HStack {
            Spacer()
            Button {
                isFlipped.toggle()
//                randomColor = [ColorType.memoBlue, .memoGreen, .memoBlue, .memoRed].randomElement()!
            } label: {
                Text("프로필")
                    .foregroundStyle(Color.primaryDark)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 4)
                    .background(Color.primaryLight)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        }
    }
    
    var editView: some View {
        VStack(alignment: .leading, spacing: 40) {
            Text("\(profile.nickname!)을 위한 코멘트를 입력하세요 💕")
                .foregroundStyle(Color.primaryDark)
                .font(.pretendardBold30)
            TextField("", text: $newComment)
                .textFieldStyle(CommonTextfieldStyle())
            HStack {
//                Spacer()
                    Button {
                        isEdit.toggle()  // 편집 창 닫기
                    } label: {
                        Text("취소")
                            .foregroundStyle(.white)
                            .frame(width: 150)
                            .padding()
                            .background(Color.strokeGray)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                    Button("추가") {
                        if !newComment.isEmpty {
                            profile.comments?.append(Comment(text:newComment,backgroundColor: randomColor.randomElement()!)) //새로운 댓글 추가
                            newComment = ""  // 입력 필드 초기화
                            isEdit.toggle()  // 편집 창 닫기
                        }
                    }
                    .foregroundStyle(.white)
                    .frame(width: 150)
                    .padding()
                    .background(Color.primaryDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                Spacer()
                    }
//            .frame(width: .infinity)
//            .padding(20)
        }
        .padding(20)
    }
}

struct CommentsView_Previews: PreviewProvider {
    
    static var container: DIContainer = .stub
    
    static var previews: some View {
        CommentsView(viewModel: .init(container: container), profile: .profileStub01, isFlipped: .constant(false))
    }
}


//
//  CollectionView.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct CollectionView: View {
    
    @EnvironmentObject var container: DIContainer
    @Bindable var viewModel: ProfileViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                    cardView
                        .padding(.horizontal, 16)
                        
                }
            .fullScreenCover(item: $viewModel.collectionDestination) {
                switch $0 {
                    case .profileView(let item):
                    ProfileCardView(profile: item, viewModel: viewModel)
                }
            }
            }
    }
    
    var cardView: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
            ForEach(viewModel.memberList) { item in
                Button {
                    // 디버깅을 위한 print 추가
                    if item.isOpened! {
                        viewModel.collectionDestination = .profileView(profile: item)
                    } else {
                        
                    }
                } label: {
                    VStack(alignment: .center) {
                        Spacer()
                        Image(item.image ?? "Soop-Shadow")
                            .resizable()
                            .scaledToFit()
                            .padding(15)
//                            .frame(width: 80, height: 80)
//                            Spacer()
                        if item.isOpened! {
                            Text("\(item.nickname!)")
                                .foregroundStyle(Color.primaryDark)
                                .font(.pretendardBold20)
                                .padding(.bottom, 10)
                        } else {
                            VStack {
                                Text("\(item.tags!.randomElement() ?? "???")")
                                    .font(.pretendardMedium14)
                                Text("???")
                                    .font(.pretendardBold20)
                            }
                            .foregroundStyle(Color.primaryDark)
                            .padding(.bottom, 10)
                        }
                        
                            
                        Spacer()
                            .frame(height: 10)
                        
                    }
                    .background(item.isOpened ?? false ? Color.primaryLight : Color.shadowGray)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
            }
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static let container: DIContainer = .stub
    
    static var previews: some View {
        CollectionView(viewModel: .init(container: container))
            .environmentObject(container)
    }
}

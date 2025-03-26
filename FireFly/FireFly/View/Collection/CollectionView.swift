//
//  CollectionView.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct CollectionView: View {
    
    @EnvironmentObject var container: DIContainer
    @Bindable var viewModel: CollectionViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                    cardView
                        .padding(.horizontal, 16)
                        
                }
            .fullScreenCover(item: $viewModel.collectionDestination) {
                switch $0 {
                    case .profileView(let item):
                    ProfileCardView(profile: item)
                }
            }
            }
    }
    
    var cardView: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
            ForEach(viewModel.memberList, id: \.self) { item in
                Button {
                    // 디버깅을 위한 print 추가
                    viewModel.collectionDestination = .profileView(profile: item)
                } label: {
                    Rectangle()
                        .foregroundStyle(Color.primaryLight)
                        .cornerRadius(10)
                        .overlay(Text("\(item.nickname!)").foregroundColor(.primaryDark))
                        .frame(height: 160) // 각 아이템 높이 설정
                    
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

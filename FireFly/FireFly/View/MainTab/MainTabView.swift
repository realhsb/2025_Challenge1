//
//  MainTabView.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject var container: DIContainer
    @Bindable var mainTabViewModel: MainTabViewModel
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                ForEach(MainTabType.allCases, id: \.self) { tabType in
                    VStack(spacing: 4) {
                        Button {
                            mainTabViewModel.send(action: .selectTab(tabType))
                            print(checkFontFile())
                        } label: {
                            Text(tabType.description)
                                .foregroundStyle(mainTabViewModel.container.tabs == tabType ? Color.primaryDark : Color.strokeGray)
                                .font(.pretendardBold18)
                        }
                        .animation(.easeInOut(duration: 0.3), value: mainTabViewModel.container.tabs)
                        .buttonStyle(PlainButtonStyle())
                        Rectangle()
                            .frame(width:50, height: 2)
                            
                            .animation(.easeInOut(duration: 0.3), value: mainTabViewModel.container.tabs)
                            .foregroundStyle(mainTabViewModel.container.tabs == tabType ? Color.primaryDark : Color.clear)

                    }
                }
            }
            
            TabView(selection: $mainTabViewModel.container.tabs) {
//                CommentsView()
//                    .tag(MainTabType.board)
                
                MyProfileCardView(viewModel: ProfileViewModel(container: container))
                    .tag(MainTabType.myProfile)
                
                
                CollectionView(viewModel: ProfileViewModel(container: container))
                    .tag(MainTabType.collcetion)
                
            }
            .tabViewStyle(.page)
            .environmentObject(container)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static let container: DIContainer = .stub
    
    static var previews: some View {
        MainTabView(mainTabViewModel: .init(container: container))
            .environmentObject(container)
    }
}

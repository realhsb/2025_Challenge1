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
                    VStack {
                        Button(tabType.description) {
                            mainTabViewModel.send(action: .selectTab(tabType))
                        }
                        .foregroundStyle(mainTabViewModel.container.tabs == tabType ? .blue : .gray)
                        .animation(.easeInOut(duration: 0.3), value: mainTabViewModel.container.tabs)
                        Rectangle()
                            .frame(height: 1)
                    }
                }
            }
            
            TabView(selection: $mainTabViewModel.container.tabs) {
                MyProfileCardView(myProfileViewModel: MyProfileCardViewModel(container: container))
                    .tag(MainTabType.myProfile)
                
                
                CollectionView(collectionViewModel: CollectionViewModel(container: container))
                    .tag(MainTabType.collcetion)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
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

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
        TabView(selection: $mainTabViewModel.container.tabs) {
            MyProfileCardView(myProfileViewModel: MyProfileCardViewModel(container: container))
                .tag(0)
                .tabItem {Image(systemName: "list.bullet.rectangle") }
            
            CollectionView(collectionViewModel: CollectionViewModel(container: container))
                .tag(1)
                .tabItem { Image(systemName: "list.bullet.rectangle") }
        }
        .environmentObject(container)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static let container: DIContainer = .stub
    
    static var previews: some View {
        MainTabView(mainTabViewModel: .init(container: container))
            .environmentObject(container)
    }
}

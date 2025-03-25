//
//  MyProfileCardView.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct MyProfileCardView: View {
    
    @EnvironmentObject var container: DIContainer
    var myProfileViewModel: MyProfileCardViewModel
    
    var body: some View {
        ZStack {
            Color.blue
            Text("hi")
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
    }
}

struct MyProfileCardView_Previews: PreviewProvider {
    
    static var container: DIContainer = .stub
    
    static var previews: some View {
        MyProfileCardView(myProfileViewModel: MyProfileCardViewModel(container: container))
            .environmentObject(container)
    }
}

//
//  CollectionView.swift
//  FireFly
//
//  Created by Soop on 3/25/25.
//

import SwiftUI

struct CollectionView: View {
    
    @EnvironmentObject var container: DIContainer
    var collectionViewModel: CollectionViewModel
    
    var body: some View {
        Text("CollectionView")
    }
}

struct CollectionView_Previews: PreviewProvider {
    static let container: DIContainer = .stub
    
    static var previews: some View {
        CollectionView(collectionViewModel: .init(container: container))
            .environmentObject(container)
    }
}

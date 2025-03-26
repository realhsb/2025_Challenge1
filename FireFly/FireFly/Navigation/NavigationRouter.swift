//
//  NavigationRouter.swift
//  FireFly
//
//  Created by Soop on 3/27/25.
//

import Foundation
import Combine

protocol NavigationRoutable {
    var destinations: [CollectionDestination] { get set }
    
    func push(to view: CollectionDestination)
    func pop()
    func popToRootView()
    func popPages(num: Int)
}

class NavigationRouter: NavigationRoutable, ObservableObjectSettable {
    
    var objectWillChange: ObservableObjectPublisher?
    
    var destinations: [CollectionDestination] = [] {
        didSet {
            objectWillChange?.send()
        }
    }
    
    func push(to view: CollectionDestination) {
        destinations.append(view)
    }
    
    func pop() {
        _ = destinations.popLast()
    }
    
    func popToRootView() {
        destinations = []
    }
    
    func popPages(num: Int) {
        destinations.removeLast(num)
    }
}

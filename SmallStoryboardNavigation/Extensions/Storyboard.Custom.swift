//
//  Storyboard.Custom.swift
//  DummyNavigation
//
//  Created by Ashish Maheshwari on 10/3/18.
//  Copyright © 2018 Ashish Maheshwari. All rights reserved.
//

import UIKit

// Create extension to storyboard
// Create enum for the storyboard names in your project
extension UIStoryboard {
    
    enum Storyboard: String {
        case firstStoryBoard = "FirstModule"
        case secondStoryBoard = "SecondModule"
    }
    
    func instantiateViewController<T: UIViewController>(_ :T.Type? = nil) -> T {
        let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier)
        guard let vc = viewController as? T  else {
            fatalError("Could not instantiate identifier \(T.storyboardIdentifier) ")
        }
        return vc
    }
    
    convenience init(_ storyboard: Storyboard) {
        self.init(name: storyboard.rawValue, bundle: nil)
    }
}

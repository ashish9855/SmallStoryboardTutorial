//
//  ViewController.Navigation.swift
//  DummyNavigation
//
//  Created by Ashish Maheshwari on 10/3/18.
//  Copyright © 2018 Ashish Maheshwari. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    class func instantiate(_ storyboard: UIStoryboard.Storyboard) -> Self {
        let storyboard = UIStoryboard(storyboard)
        let viewController = storyboard.instantiateViewController(self)
        return viewController
    }
    
    func pop(animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }
    
    func dismiss(animated: Bool) {
        self.navigationController?.dismiss(animated: animated, completion: nil)
    }
    
    func present(on viewController: UIViewController, animated: Bool = true) {
        let navigationController = UINavigationController(rootViewController: self)
        viewController.present(navigationController, animated: animated, completion: nil)
    }
    
    func push(on viewController: UIViewController, animated: Bool) {
        if let navigationController = viewController.navigationController {
            navigationController.pushViewController(self, animated: animated)
            return
        }
    }
}

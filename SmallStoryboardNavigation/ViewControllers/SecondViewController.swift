//
//  SecondViewController.swift
//  DummyNavigation
//
//  Created by Ashish Maheshwari on 10/3/18.
//  Copyright © 2018 Ashish Maheshwari. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func popController(_ sender: Any) {
        self.pop(animated: true)
    }
    
    @IBAction func dismissController(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

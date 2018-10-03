//
//  ViewController.swift
//  DummyNavigation
//
//  Created by Ashish Maheshwari on 10/2/18.
//  Copyright © 2018 Ashish Maheshwari. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pushControllerFromDifferentStoryBoard(_ sender: Any) {
        SecondViewController.instantiate(.secondStoryBoard).push(on: self, animated: true)
    }
    
    
    @IBAction func presentControllerFromDifferentStoryBoard(_ sender: Any) {
        SecondViewController.instantiate(.secondStoryBoard).present(on: self, animated: true)
    }
}



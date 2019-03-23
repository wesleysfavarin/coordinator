//
//  ViewController.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func BuyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    @IBAction func CreateAccontTapped(_ sender: Any) {
      coordinator?.creatAccount()
    }
}


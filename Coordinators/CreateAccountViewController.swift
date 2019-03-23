//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {

    weak var coordinator: CreateAccountCoordinator?
    var selectedProduct = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        coordinator?.didFinishBuying()
    }
}

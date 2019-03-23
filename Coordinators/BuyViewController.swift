//
//  BuyViewController.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
 
    weak var coordinator: BuyCoordinator?
    var selectedProduct = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        coordinator?.didFinishBuying()
    }
}

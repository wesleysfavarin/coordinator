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
    
    @IBOutlet weak var product: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  // coordinator passando parametros de telas
    @IBAction func BuyTapped(_ sender: Any) {
        coordinator?.buySubscription(to: product.selectedSegmentIndex)
    }
    
    @IBAction func CreateAccontTapped(_ sender: Any) {
      coordinator?.creatAccount(to: product.selectedSegmentIndex)
    }
    
    @IBAction func changePge(_ sender: Any) {
        
        print(product.selectedSegmentIndex)
        
        if product.selectedSegmentIndex == 0 {
            coordinator?.buySubscription(to: product.selectedSegmentIndex)
        } else {
           coordinator?.creatAccount(to: product.selectedSegmentIndex)
        }
    }
}


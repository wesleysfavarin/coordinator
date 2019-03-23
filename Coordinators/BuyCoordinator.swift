//
//  BuyCoordinator.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import UIKit

class BuyCoordinator : Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func buySubscription(to productType: Int){
        let vc = BuyViewController.instantiate()
        vc.selectedProduct = productType
        print(vc.selectedProduct)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
        
        
    }
    
    func didFinishBuying(){
        parentCoordinator?.childDidFinish(self)
    }
}


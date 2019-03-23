//
//  CreateAccountCoordinator.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import UIKit
class CreateAccountCoordinator : Coordinator {
    
weak var parentCoordinator: MainCoordinator?

        var childCoordinators = [Coordinator]()
        var navigationController: UINavigationController

        init(navigationController: UINavigationController){
            self.navigationController = navigationController
        }

        func start() {
            let vc = CreateAccountViewController.instantiate()
            vc.coordinator = self
            navigationController.pushViewController(vc, animated: true)
        }

        func CreateAccountSubscription(to productType: Int){
            let vc = CreateAccountViewController.instantiate()
            vc.selectedProduct = productType
            vc.coordinator = self
            navigationController.pushViewController(vc, animated: true)
            
            
        }

        func didFinishBuying(){
            parentCoordinator?.childDidFinish(self)
        }
}

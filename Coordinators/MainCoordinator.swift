//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: NSObject,Coordinator, UINavigationControllerDelegate {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        
     let vc = ViewController.instantiate()
        vc.coordinator  = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription(to productType: Int){
       let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.buySubscription(to: productType)
    }
    
    func creatAccount(to productType: Int){
        let child = CreateAccountCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.CreateAccountSubscription(to: productType)
    }
    
    func childDidFinish(_ child: Coordinator? ){
        for (index, coordinator) in
                   childCoordinators.enumerated() {
                if coordinator === child {
                    childCoordinators.remove(at: index)
                    break
                }
            }
      }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool){
        guard let fromViewConroler = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewConroler){
            return
            
        }
        
        if let buyViewController = fromViewConroler as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
    }
}

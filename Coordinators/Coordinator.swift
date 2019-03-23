//
//  Coordinator.swift
//  Coordinators
//
//  Created by mac on 23/03/19.
//  Copyright © 2019 Wesley S. Favarin. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator:  AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
    
    
}

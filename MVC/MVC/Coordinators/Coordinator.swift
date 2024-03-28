//
//  Coordinator.swift
//  MVC
//
//  Created by Yelko Loncarich on 15/07/23.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var viewController: UIViewController? { get }
    var navigationController: UINavigationController? { get }
    
    func start()
    
}

extension Coordinator {
    
    var viewController: UIViewController? { nil }
    var navigationController: UINavigationController? { nil }
    
}

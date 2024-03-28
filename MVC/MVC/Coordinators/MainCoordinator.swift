//
//  MainCoordinator.swift
//  MVC
//
//  Created by Yelko Loncarich on 15/07/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listOfCharactersViewController = storyboard.instantiateViewController(withIdentifier: "CharacterListViewController")
        navigationController?.pushViewController(listOfCharactersViewController, animated: true)
    }
    
}

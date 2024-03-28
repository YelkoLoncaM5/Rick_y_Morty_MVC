//
//  CharacterDetailViewController.swift
//  MVC
//
//  Created by Yelko Loncarich on 15/07/23.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    
    var mainView: CharacterDetailView{ self.view as! CharacterDetailView}
    
    init(characterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(characterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = CharacterDetailView()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

//
//  ViewController.swift
//  MVC
//
//  Created by Yelko Loncarich on 14/07/23.
//

import UIKit

class CharactersListViewController: UIViewController {
    
    var mainView: CharactersListView{ self.view as! CharactersListView}
    let apiClient = ListofCharactersAPIClient()
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    //var characterDetailCoordinator: CharacterDetailPushCoordinator?
    var characterDetailCoordinator: CharacterDetailModalCoordinator?
    
    override func loadView() {
        view = CharactersListView()
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Back"
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("Index \(index)")
            //Present New View Controller
            guard let dataSource = self?.tableViewDataSource else {
                return
            }
            let characterModel = dataSource.characters[index]
            self?.characterDetailCoordinator = CharacterDetailModalCoordinator(viewController: self, characterModel: characterModel)
            self?.characterDetailCoordinator?.start()
            /*let characterModel = dataSource.characters[index]
            self?.characterDetailCoordinator = CharacterDetailPushCoordinator(navigationController: self?.navigationController, characterModel: characterModel)
            self?.characterDetailCoordinator?.start()*/
        }
        Task {
            let characters = await apiClient.getListOfCharacter()
            print("Characters \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
        title = "Rick and Morty with MVC"
    }
    
}

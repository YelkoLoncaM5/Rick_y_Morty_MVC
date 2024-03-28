//
//  ListOfCharactersTableViewDelegate.swift
//  MVC
//
//  Created by Yelko Loncarich on 15/07/23.
//

import Foundation
import UIKit

class ListOfCharactersTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
    
}

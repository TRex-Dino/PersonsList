//
//  MainViewController.swift
//  PersonsList
//
//  Created by Dmitry on 14.04.2021.
//

import UIKit

class MainViewController: UITabBarController {

    private let dataManager = DataManager()
    private var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persons = dataManager.getPersonsList()
        
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.persons = persons
            } else if let fullListVC = viewController as? FullListViewController {
                fullListVC.persons = persons
            }
        }
    }
    

}

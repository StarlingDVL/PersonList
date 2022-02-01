//
//  PersonListTabBarController.swift
//  PersonList
//
//  Created by Юрий Скворцов on 01.02.2022.
//

import UIKit

class PersonListTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dataTransfer()
    }
    
    private func dataTransfer() {
        let persons = Person.getPersons()
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.persons = persons
            } else if let personListVC = viewController as? PersonListViewController {
                personListVC.persons = persons
            }
        }
    }
}

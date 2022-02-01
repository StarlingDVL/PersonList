//
//  PersonListTabBarController.swift
//  PersonList
//
//  Created by Юрий Скворцов on 01.02.2022.
//

import UIKit

class PersonListTabBarController: UITabBarController {
    
    private var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers = tabBarController?.viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.persons = persons
            } else if let personListVC = viewController as? PersonListViewController {
                personListVC.persons = persons
            }
        }
    }

}

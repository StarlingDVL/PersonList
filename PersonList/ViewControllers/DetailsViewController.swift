//
//  DetailsViewController.swift
//  PersonList
//
//  Created by Юрий Скворцов on 01.02.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "\(person.phoneNumber)"
        emailLabel.text = "\(person.eMail)"
    }
}

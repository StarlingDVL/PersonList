//
//  PersonListViewController.swift
//  PersonList
//
//  Created by Юрий Скворцов on 01.02.2022.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = "\(person.phoneNumber)"
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = "\(person.email)"
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

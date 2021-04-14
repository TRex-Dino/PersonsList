//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Dmitry on 13.04.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Persons List", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        
        cell.contentConfiguration = content
        
        return cell
    }
}

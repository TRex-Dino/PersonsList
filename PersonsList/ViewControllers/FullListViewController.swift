//
//  FullListViewController.swift
//  PersonsList
//
//  Created by Dmitry on 14.04.2021.
//

import UIKit

class FullListViewController: UITableViewController {

    var persons: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let fullName = UILabel()
        
        fullName.text = persons[section].fullname
        fullName.textAlignment = .center
        fullName.backgroundColor = UIColor(red: CGFloat.random(in: 0.65...0.9),
                                           green: CGFloat.random(in: 0.65...0.9),
                                           blue: CGFloat.random(in: 0.65...0.9),
                                           alpha: 1)
        
        return fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullContacts", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone.circle")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

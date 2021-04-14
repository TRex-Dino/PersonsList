//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Dmitry on 13.04.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Persons List", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        
        cell.contentConfiguration = content
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0.65...0.9),
                                       green: CGFloat.random(in: 0.65...0.9),
                                       blue: CGFloat.random(in: 0.65...0.9),
                                       alpha: 1)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let singleVC = segue.destination as? SingleViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        singleVC.person = persons[indexPath.row]
        singleVC.color = tableView.cellForRow(at: indexPath)?.backgroundColor
    }
}

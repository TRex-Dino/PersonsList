//
//  SingleViewController.swift
//  PersonsList
//
//  Created by Dmitry on 14.04.2021.
//

import UIKit

class SingleViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    var color: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullname
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        
        view.backgroundColor = color
    }
    


}

//
//  ContactDetailsViewController.swift
//  ContactsApp
//
//  Created by  Aliaksei on 23.03.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var fullNameNaviItem: UINavigationItem!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.telNumber)"
        emailLabel.text = "Email: \(person.email)"
        fullNameNaviItem.title = person.fullName
    }
    
}

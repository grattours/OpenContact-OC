//
//  TableViewController.swift
//  OpenContact
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
    var contacts = Contact.all
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = Contact.all
        tableView.reloadData()
        // displayContactList()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contacts = Contact.all
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)

        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.lastName! + " " + contact.firstName!
        cell.detailTextLabel?.text = contact.phone

        return cell
    }
}


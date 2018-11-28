//
//  Contact.swift
//  OpenContact
//
//  Created by Luc Derosne on 27/11/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation
import CoreData
// les propriétés sont générées par Xcode 
class Contact: NSManagedObject {
    static var all: [Contact] {
        let request: NSFetchRequest<Contact> = Contact.fetchRequest()
        guard let contacts = try? AppDelegate.viewContext.fetch(request) else {
            return []
        }
        
        return contacts
    }
}

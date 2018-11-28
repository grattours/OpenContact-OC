//
//  ContactService.swift
//  OpenContact
//
//  Created by Luc Derosne on 27/11/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

class ContactService {
    static var shared = ContactService()
    private init() {}
    
    private(set) var contacts = [Contact]()

    func add(contact: Contact) {
        contacts.append(contact)
    }
}

//
//  User.swift
//  GruppoC16-10
//
//  Created by Leo Luca Bonin on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit
import RealmSwift

@objcMembers class User: Object {
    dynamic var id : String!
    dynamic var name : String?
    dynamic var surname : String?
    dynamic var email : String!
    dynamic var password : String!
    dynamic var imageProfile : Data?
    dynamic var isAdmin : Bool?
    
    let tickets : List<Ticket> = List<Ticket>()
    
    convenience init (name : String? = nil, surname : String? = nil, email: String! , password : String! , imageProfile : Data? = nil, isAdmin : Bool? = false) {
        self.init()
        
        self.id = email
        self.name = name
        self.surname = surname
        self.email = email
        self.password = password
        self.imageProfile = imageProfile
        self.isAdmin = isAdmin
    }
    
    // MARK: - Realms tuff
    
    func save(in realm: Realm = try! Realm()) {
        
        do {
            try realm.write {
                realm.add(self)
            }
        }
        catch {}
    }
    
    
   static func checkLogin(email1: String, password1: String) -> User? {
    
        // Get the default Realm
        let realm = try! Realm()
        
        // Query Realm
        return realm.objects(User.self).filter({ $0.email == email1 && $0.password == password1 }).first
    }
    
    func getTicketList()->[Ticket]{
        return Array(tickets)
    }
    
    
}

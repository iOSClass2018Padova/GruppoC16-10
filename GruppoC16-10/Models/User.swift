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
}

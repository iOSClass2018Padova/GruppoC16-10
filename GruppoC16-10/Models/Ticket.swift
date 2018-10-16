//
//  Ticket.swift
//  GruppoC16-10
//
//  Created by Leo Luca Bonin on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit
import RealmSwift

@objcMembers class Ticket: Object {
    
    dynamic var idFilm : String?
    dynamic var place : Int?
    dynamic var time : String?
    
    convenience init (film idFilm : String? , place : Int? = nil, time : String? = nil ){
        self.init()
        
        self.idFilm = idFilm
        self.place = place
        self.time = time
    }
    
    func add(in realm: Realm = try! Realm()) {
        do {
            try realm.write {
                realm.add(self)
            }
        }
        catch{ }
    }
    
    func remove(in realm: Realm = try! Realm()) {
        do {
            try realm.write {
                realm.add(self)
            }
        }
        catch{ }
    }
    
    static func all(in realm: Realm = try! Realm()) -> [Ticket] {
        return Array(realm.objects(Ticket.self))
    }
    
    
    
}

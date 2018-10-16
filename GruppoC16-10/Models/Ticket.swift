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
    dynamic var ticket : Ticket?
    dynamic var times : String?
    dynamic var places : Int?
    
    convenience init (film idFilm : String?, ticket : Ticket? = nil, times : String? = nil, places : Int? = nil){
        self.init()
        
        self.idFilm = idFilm
        self.ticket = ticket
        self.times = times
        self.places = places
    }

}

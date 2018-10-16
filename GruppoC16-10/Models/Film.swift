//
//  Film.swift
//  GruppoC16-10
//
//  Created by Leo Luca Bonin on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit
import RealmSwift

@objcMembers class Film: Object {
    
    dynamic var id : String!
    dynamic var title : String?
    dynamic var descr: String?
    dynamic var image : Data?
    dynamic var outputDate : String?
    dynamic var places : Int?
    
    let times : [String] = []
    let tickets : List<Ticket> = List<Ticket>()
    
    convenience init (title : String? = nil, descr : String? = nil, image: Data? = nil , outputDate : String? = nil, places : Int? = 0) {
        self.init()
        
        self.id = UUID().uuidString
        self.title = title
        self.descr = descr
        self.image = image
        self.outputDate = outputDate
        self.places = places
    }
    
    

}

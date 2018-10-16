//
//  UserProfileController.swift
//  GruppoC16-10
//
//  Created by Nicola on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class UserProfileController: UIViewController {
    enum ControllerState {
        case ADDING
        case SHOW
        case EDITING
    }
    
    var viewState = ControllerState.SHOW
    
    private var person : User?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


// MARK: - Adding new profile logic

extension UserProfileController {
    
    func pushData(email : String, password : String) {
        
        // make new user
        person = User(email: email, password: password)
    }
}

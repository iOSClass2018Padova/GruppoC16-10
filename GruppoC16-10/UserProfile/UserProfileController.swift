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
        case SHOW
        case EDITING
    }
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    private var cancelButton: UIBarButtonItem!
    
    var viewState = ControllerState.SHOW
    
    private var backupPerson : User?
    private var person : User?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        person = User(value: backupPerson!)
        
        // change save button label
        saveButton.title = viewState == ControllerState.EDITING ? "Save" : "Edit"
        
        // create a cancel button
        cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(onCancelClick))
    }
    
    //
    // When user save or wants to edit a profile
    //
    @IBAction func onSaveClick(_ sender: Any) {
        switch viewState {
        case ControllerState.EDITING:
            
            // save changes
            self.navigationItem.leftBarButtonItem = nil
            viewState = ControllerState.SHOW
            tableView.reloadData()
            
        case ControllerState.SHOW:
            
            // make stuff editable
            saveButton.title = "Save"
            self.navigationItem.leftBarButtonItem = cancelButton
            viewState = ControllerState.EDITING
            tableView.reloadData()
        }
    }
    
    //
    // When user dismiss an editing
    //
    @objc func onCancelClick() {
        self.navigationItem.leftBarButtonItem = nil
        
        // dismiss changes
    
        // go back
        self.navigationController?.popViewController(animated: true)
        
        return
    }
}

// MARK: - TableView delegate e datasource

extension UserProfileController : UITableViewDelegate, UITableViewDataSource {
    enum Sections : Int {
        case UserInfo = 0
        case UserChangePassword
        case UserTickets
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewState == ControllerState.EDITING ? 1 : 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Sections.UserInfo.rawValue:
            return 1
        case Sections.UserChangePassword.rawValue:
            return 1
        case Sections.UserTickets.rawValue:
            return 0
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case Sections.UserInfo.rawValue:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: UserInfoCell.kIdentifier) as! UserInfoCell
            let isEditing = viewState == ControllerState.EDITING
            cell.setup(obj: person!, isEditing: isEditing)
            return cell
            
        case Sections.UserChangePassword.rawValue:
            
            return tableView.dequeueReusableCell(withIdentifier: UserChangePassword.kIdentifier) as! UserChangePassword
            
        case Sections.UserTickets.rawValue:
            
            return UITableViewCell()
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case Sections.UserInfo.rawValue:
            return 165
        case Sections.UserChangePassword.rawValue:
            return 60
        case Sections.UserTickets.rawValue:
            return 100
        default:
            return 0
        }
    }
}


// MARK: - Adding new profile logic

extension UserProfileController {
    
    func pushData(email : String, password : String) {
        
        // make new user
        backupPerson = User(email: email, password: password)
    }
}

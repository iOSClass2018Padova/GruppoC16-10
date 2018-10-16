//
//  UserInfoCell.swift
//  GruppoC16-10
//
//  Created by Nicola on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class UserInfoCell: UITableViewCell {
    enum FieldType : Int {
        case Name = 0
        case Surname = 1
        case Email = 2
    }
    
    static let kIdentifier = "userInfoCell"

    @IBOutlet weak var userImage: UIImageView! {
        didSet {
            userImage.doCircle()
        }
    }
    @IBOutlet var fields: [UITextField]!
    @IBOutlet var borders: [UIView]!
    
    private var user : User!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //
    // Function called by the controller to create the cell
    //
    func setup(obj : User, isEditing : Bool) {
        user = User(value: obj)
        
        for border in borders {
            border.isHidden = !isEditing
        }
        
        for field in fields {
            field.isUserInteractionEnabled = isEditing
            
            // fill the input with info
            switch field.tag {
            case FieldType.Name.rawValue:
                field.text = user.name ?? ""
            case FieldType.Surname.rawValue:
                field.text = user.surname ?? ""
            case FieldType.Email.rawValue:
                field.text = user.email ?? ""
            default:
                field.text = ""
            }
        }
    }
    
    
    //
    // when user change the text in field
    //
    @IBAction func onEditingChanged(_ sender: UITextField) {
        
        switch sender.tag {
        case FieldType.Name.rawValue:
            user.edit(name: sender.text)
        case FieldType.Surname.rawValue:
            user.edit(surname: sender.text)
        case FieldType.Email.rawValue:
            user.edit(email: sender.text)
        }
    }
    
}

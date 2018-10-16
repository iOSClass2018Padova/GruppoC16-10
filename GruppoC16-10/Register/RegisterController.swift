//
//  RegisterController.swift
//  GruppoC16-10
//
//  Created by Nicola on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    @IBOutlet weak var registerButton: UIButton! {
        didSet {
            registerButton.roundedCorners(with: 6.0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //
    // OnClick on GO button
    // Verify input integrity and go to next step
    //
    @IBAction func goButtonClick(_ sender: UIButton) {
        if emailField.isEmailValid() && passwordField.isPasswordValid()
            && passwordField.text == repeatPasswordField.text {
            
            // ok go with other stuff
            self.performSegue(withIdentifier: Dictionary.segueRegisterUserProfile, sender: self)
        }
        else {
            // show error message
            let alert = UIAlertController(title: "Errore", message: "I dati inseriti non sono corretti", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Ho capito", style: .default, handler: nil)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
     // MARK: - Navigation
    
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Dictionary.segueRegisterUserProfile {
            if let controller = segue.destination as? UserProfileController {
                
                // pass the email and password
                controller.viewState = UserProfileController.ControllerState.ADDING
                controller.pushData(email: emailField.text!, password: passwordField.text!)
            }
        }
     }
}

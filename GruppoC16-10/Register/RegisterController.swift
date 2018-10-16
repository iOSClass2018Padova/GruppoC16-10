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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //
    // OnClick on GO button
    // Verify input integrity and go to next step
    //
    @IBAction func goButtonClick(_ sender: UIButton) {
        
    }
}

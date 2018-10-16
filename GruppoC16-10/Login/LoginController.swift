//
//  LoginController.swift
//  GruppoC16-10
//
//  Created by Sarah Dal Santo on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var emailOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    @IBAction func login(_ sender: UIButton) {
        //faccio dei controlli e poi passo alla lista film
        loginControl()
    }
    
    @IBAction func register(_ sender: UIButton) {
        //faccio partire la pagina per la registrazione
        
    }
    
    //funzione per controllare le credenziali di accesso
    func loginControl() {
        //prendo i testi delle textfield
        //var emailText: String = emailOutlet.text ??
        //var passwordText: String = passwordOutlet.text!
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

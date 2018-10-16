//
//  LoginController.swift
//  GruppoC16-10
//
//  Created by Sarah Dal Santo on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    var user : User?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var emailOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    @IBAction func login(_ sender: UIButton) {
    
        //prendo i testi delle textfield
        let emailText: String = emailOutlet.text ?? ""
        let passwordText: String = passwordOutlet.text ?? ""
    
        user = User.checkLogin(email1: emailText, password1: passwordText)
        
        //se user non è nil
        if user != nil{
            //vado alla home page (lista film)
            self.performSegue(withIdentifier: Dictionary.segueLoginHomepage, sender: self)
        }else{
            //faccio un alert dove dico che la mail o la password sono sbagliate
            let alert = UIAlertController(title: "Attenzione", message: "email o password sbagliata", preferredStyle: .alert)
            let okay = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
            alert.addAction(okay)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func register(_ sender: UIButton) {
        //faccio partire la pagina per la registrazione
        self.dismiss(animated: true, completion: nil)
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

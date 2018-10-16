//
//  Extensions.swift
//  GruppoC16-10
//
//  Created by Nicola on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

extension UIButton {
    
    //
    // make rounded corners
    //
    func roundedCorners(with value : Double) {
        self.layer.cornerRadius = CGFloat(value)
    }
}

extension UITextField {
    
    //
    // Check if the text contained in the field is a valid email
    //
    func isEmailValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.text)
    }
    
    
    //
    // Check if the text container in the field is a valid password
    //
    func isPasswordValid() -> Bool {
        if let text = self.text {
            return text.count > 5
        }
        else {
            return false
        }
    }
}

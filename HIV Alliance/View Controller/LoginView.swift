//
//  LoginView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class LoginView : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func loginbutton(_ sender: Any) {
        let password = Password.text
        if((password?.isEmpty)!){
            setalert(message: "password should be filled")
            return
        }
    }
    
    func setalert(message:String){
        let myAlert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true,completion: nil)
    }
}

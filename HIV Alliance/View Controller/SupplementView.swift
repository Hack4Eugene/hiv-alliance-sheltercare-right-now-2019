//
//  SupplementView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit
import DLRadioButton
class SupplementView : UIViewController, UIScrollViewDelegate{
    
    @IBOutlet var button:
        [DLRadioButton]!
    
    
    func checkifNext()->Bool{
        var supplement : String?
        for supply in button{
            if (supply.isSelected){
                supplement = supply.currentTitle
                return false
            }
        }
            data?["supplemental"] = supplement
            return true
    }
    
    @IBAction func Exit(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    func resetForm(){
        let myAlert = UIAlertController(title: "Attention", message: "All blanks must be filled", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true,completion:nil)
    }
    
    @IBAction func Next(_ sender: Any) {
        if(self.checkifNext()){
            self.performSegue(withIdentifier: "toNext", sender: self)
        }
        else{
            self.resetForm()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nav = segue.destination as! UINavigationController
            let viewController = nav.topViewController as!
            SupplementView
            viewController.data = data
        }
        
    }
    var data : Dictionary<String,Any>?
}



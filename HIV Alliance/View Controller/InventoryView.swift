//
//  InventoryView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit
import DLRadioButton
class InventoryView : UIViewController, UIScrollViewDelegate{
    
    @IBOutlet weak var Syringesin: UITextField!
    @IBOutlet weak var SyringesOut: UITextField!
    @IBOutlet weak var Sharps: UITextField!
    @IBOutlet weak var Alcohol: UITextField!
    @IBOutlet weak var Condoms: UITextField!
    @IBOutlet weak var Cottons: UITextField!
    
    func checkifNext()->Bool{
        if ((Syringesin.text?.isEmpty)!||(SyringesOut.text?.isEmpty)!){
            
            resetForm()
            return false
        }
        
        data["SyringesIN"] = Syringesin.text!
        data["SyringesOUT"] = SyringesOut.text!
        data["Sharps"] = Sharps.text!
        data["Alcohol"] = Alcohol.text!
        data["Condoms"] = Condoms.text!
        data["Cotton"] = Cottons.text!
        return true
    }
    func resetForm(){
        let myAlert = UIAlertController(title: "Attention", message: "All blanks must be filled", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true,completion:nil)
    }
    
    @IBAction func Done(_ sender: Any) {
        if(self.checkifNext()){
            Sqlite.shared.insert(dataDict: data)
        }
        else{
            self.resetForm()
        }
    }
    @IBAction func Exit(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDone" {
            let nav = segue.destination as! UINavigationController
            let viewController = nav.topViewController as!
            LastView
            viewController.data = data
        }
        
    }
    public var data : Dictionary<String,String> = [:]
}

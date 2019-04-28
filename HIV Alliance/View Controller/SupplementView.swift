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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in Witness{
            i.isMultipleSelectionEnabled = true
        }
        for i in condition{
            i.isMultipleSelectionEnabled = true
        }
        for i in exchanged{
            i.isMultipleSelectionEnabled = true
        }
        for i in food{
            i.isMultipleSelectionEnabled = true
        }
        for i in needles{
            i.isMultipleSelectionEnabled = true
        }
    }
    @IBOutlet var Witness: [DLRadioButton]!
    @IBOutlet var condition : [DLRadioButton]!
    @IBOutlet var exchanged : [DLRadioButton]!
    @IBOutlet var food : [DLRadioButton]!
    @IBOutlet var needles : [DLRadioButton]!
    
    func checkifNext()->Bool{
        var witness : String?
        var Condition : String?
        var Exchanged : String?
        var Needles : String?
        
        for wt in Witness{
            if (wt.isSelected){
                witness = wt.currentTitle
            }
        }
        for cd in condition{
            if (cd.isSelected){
                Condition = cd.currentTitle
            }
        }
        for exc in exchanged{
            if (exc.isSelected){
                Exchanged = exc.currentTitle
            }
        }
        
        for nd in needles{
            if (nd.isSelected){
                Needles = nd.currentTitle
            }
        }
        data["WitnessedOD"] = witness
        data["MedicalCondition"] = Condition
        data["ExchangedPreviously"] = Exchanged
        //data?["supplemental"] = Food
        data["ExchangingForOthers"] = Needles
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
        if(checkifNext()){
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
            InventoryView
            viewController.data = data
        }
        
    }
    public var data : Dictionary<String,String> = [:]
}



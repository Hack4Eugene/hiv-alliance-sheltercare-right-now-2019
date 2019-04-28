//
//  TestingView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//
    
import Foundation
import UIKit
import DLRadioButton

class TestingView : UIViewController, UIScrollViewDelegate{
    
    @IBOutlet var SharedNeedle: [DLRadioButton]!
    @IBOutlet var LastTime:[DLRadioButton]!
    @IBOutlet var HEPC:[DLRadioButton]!
    @IBOutlet var SafeInject : [DLRadioButton]!
    @IBOutlet var Detox:[DLRadioButton]!
    
    func checkifNext()->Bool{
        var sharedneedle : String?
        var lasttime : String?
        var hepc : String?
        var detox: String?
        
        for sd in SharedNeedle{
            if (sd.isSelected){
                sharedneedle = sd.currentTitle
            }
        }
        for lt in LastTime{
            if (lt.isSelected){
                lasttime = lt.currentTitle
            }
        }
        for hep in HEPC{
            if (hep.isSelected){
                hepc = hep.currentTitle
            }
        }
        for det in Detox{
            if (det.isSelected){
                detox = det.currentTitle
            }
        }

        data["SharedNeedle"] = sharedneedle!
        data["LastHIVTest"] = lasttime!
        //data?["MedicalCondition"] = safeinject
        data["LastHEPCTest"] = hepc!
        data["Detox"] = detox!
        
        return true
    }
    
    @IBAction func Exit(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
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
    public var data : Dictionary<String,String> = [:]
}

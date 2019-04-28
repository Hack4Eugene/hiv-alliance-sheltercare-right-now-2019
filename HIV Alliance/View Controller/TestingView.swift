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
    
    @IBOutlet var Tests:
        [DLRadioButton]!
    
    
    func checkifNext()->Bool{
        var test : String?
        
        for Test in Tests{
            if(Test.isSelected){
                test = Test.currentTitle
                return false
            }
        }
        data?["test"] = test
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
    var data : Dictionary<String,Any>?
}

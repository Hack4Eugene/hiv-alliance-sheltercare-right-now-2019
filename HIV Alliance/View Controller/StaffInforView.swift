//
//  StaffInforView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class StaffInforView : UIViewController, UIScrollViewDelegate,UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CityData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        CityV = CityData[row]
        return CityV
    }
    
    
    @IBOutlet weak var Date: UITextField!
    @IBOutlet weak var City: UIPickerView!
    private var CityV : String?
    var CityData: [String] = [String]()
    
    func checkexisted()->Bool{
        let DateV = Date.text

//        if (DateV?.isEmpty) Conditional
        return true
    }
    
    @IBAction func Exit(_ sender: Any) {
        self.performSegue(withIdentifier: "Unwind", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CityData = []
        self.City.delegate = self
        self.City.dataSource = self

        
    }
    
    @IBAction func Next(_ sender: Any) {
        if(self.checkexisted()){
            self.performSegue(withIdentifier: "toNext", sender: self)
        }
        else{
            self.resetForm()
        }
    }
    
    
    func resetForm(){
        let myAlert = UIAlertController(title: "Attention", message: "All blanks must be filled", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true,completion:nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nav = segue.destination as! UINavigationController
            let viewController = nav.topViewController as! PersonalVIew
            viewController.data = data
        }

    }
        var data : Dictionary<String,Any>?
}





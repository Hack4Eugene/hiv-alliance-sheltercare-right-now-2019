//
//  StaffInforView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit
import DLRadioButton
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
    
    @IBOutlet var Location : [DLRadioButton]!
    
    @IBOutlet weak var Date: UITextField!
    @IBOutlet weak var City: UIPickerView!
    
    @IBOutlet weak var Initials: UITextField!
        
    
    private var CityV : String?
    
    
    var CityData: [String] = [String]()
    
    func checkexisted()->Bool{

        var location : String?
        
        if ((Date.text?.isEmpty)! || (Initials.text?.isEmpty)! || (CityV?.isEmpty)!){
            resetForm()
            return false
        }
        for lo in Location{
            if (lo.isSelected){
                location = lo.currentTitle!
            }
        }
        data["EncounterDate"] = Date.text!
        //data?["Initial"] = Initials.text
        //data?["BirthCity"] = CityV
        data["Location"] = location
        return true
    }
    
    @IBAction func Exit(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CityData = ["San jose","New York","Eugene","Portland"]
        self.City.delegate = self
        self.City.dataSource = self
        for button in self.Location{
            button.isMultipleSelectionEnabled = true
        }

        
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
    public var data : Dictionary<String,String> = [:]
    
}





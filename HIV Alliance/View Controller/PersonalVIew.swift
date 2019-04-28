//
//  PersonalVIew.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class PersonalVIew : UIViewController, UIScrollViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0){
            return Eity.count
        }
        else{
            return Rac.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component == 0){
            Ethini = Eity[row]
            return Ethini
        }
        else{
            Ra = Rac[row]
            return Ra
        }
    }
    
    

    @IBOutlet weak var FemaleButton: UIButton!
    @IBOutlet weak var MaleButton: UIButton!
    @IBOutlet weak var IntersexButton: UIButton!
    
    @IBOutlet weak var Birth: UITextField!
    @IBOutlet weak var CityBorn: UITextField!
    
    @IBOutlet weak var LettersLN: UITextField!
    @IBOutlet weak var NEXID: UITextField!
    
    @IBOutlet weak var ZIP: UITextField!
    
    @IBOutlet weak var Ethnicity: UIPickerView!
    
    @IBOutlet weak var Race: UIPickerView!
    
    @IBOutlet weak var HomelessYes: UIButton!
    @IBOutlet weak var HomelessNo: UIButton!
    
    private var Ethini : String?
    private var Ra : String?
    
    var Eity: [String] = [String]()
    var Rac:[String] = [String]()
    
    func checkifNext()->Bool{
        let bir = Birth.text
        let cityborn = CityBorn.text
        let letterln = LettersLN.text
        let nextid = NEXID.text
        let zip = ZIP.text
        
        if((bir?.isEmpty)! || (cityborn?.isEmpty)! || (letterln?.isEmpty)! || (nextid?.isEmpty)! || (zip?.isEmpty)!){
            resetForm()
            return false
        }
        data?["birthday"] = bir
        data?["cityborn"] = cityborn
        data?["letterln"] = letterln
        data?["nextid"] = nextid
        return true
    }
    
    @IBAction func Exit(_ sender: Any) {
        self.performSegue(withIdentifier: "Unwind", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Eity = []
        Rac = []
        self.Ethnicity.delegate = self
        self.Ethnicity.dataSource = self
        self.Race.delegate = self
        self.Race.dataSource = self
        
    }
    
    @IBAction func Next(_ sender: Any) {
        if(self.checkifNext()){
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
            let viewController = nav.topViewController as! TestingView
            viewController.data = data
        }
        
    }
    var data : Dictionary<String,Any>?
}

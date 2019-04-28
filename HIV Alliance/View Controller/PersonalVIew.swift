//
//  PersonalVIew.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class PersonalVIew : UIViewController, UIScrollViewDelegate{
    

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
    
    
    func checkifNext(){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Next(_ sender: Any) {
        checkifNext()
    }
    var data : Dictionary<String,Any>?
}

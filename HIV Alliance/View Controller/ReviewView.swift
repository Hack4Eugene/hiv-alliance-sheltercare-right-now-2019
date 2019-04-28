//
//  ReviewViewController.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit
import DLRadioButton
class ReviewView : UIViewController, UIScrollViewDelegate{
    @IBOutlet var blairButton:
        [DLRadioButton]!
    @IBOutlet var caveButton: [DLRadioButton]!
    @IBOutlet weak var DateText: UITextField!
    @IBOutlet weak var InitialText: UITextField!
    @IBOutlet weak var LocationOtherText: UITextField!
    @IBOutlet weak var GenderotherText: UITextField!
    @IBOutlet weak var DoBtext:
        UITextField!
    @IBOutlet weak var cityborntext: UITextField!
    @IBOutlet weak var lnamelettertext: UITextField!
    @IBOutlet weak var NEXID:
        UITextField!
    @IBOutlet weak var ZIPcodeText: UITextField!
    @IBOutlet weak var insurancetext: UITextField!
    @IBOutlet weak var peoplenumbertext: UITextField!
    @IBOutlet weak var souttext: UITextField!
    @IBOutlet weak var sintext:
        UITextField!
    @IBOutlet weak var sharptext: UITextField!
    @IBOutlet weak var alcswabtext: UITextField!
    @IBOutlet weak var condoms:
        UITextField!
    @IBOutlet weak var conttomtext: UITextField!
    @IBOutlet weak var staffpick: UIPickerView!
    @IBOutlet weak var ethnicity: UIPickerView!
    @IBOutlet weak var race: UIPickerView!
    
    func checkifNext(){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

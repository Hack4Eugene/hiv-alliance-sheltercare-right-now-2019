//
//  InventoryView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class InventoryView : UIViewController, UIScrollViewDelegate{
    @IBOutlet weak var Syringesin: UITextField!
    @IBOutlet weak var SyringesOut: UITextField!
    @IBOutlet weak var Sharps: UITextField!
    @IBOutlet weak var Alcohol: UITextField!
    @IBOutlet weak var Condoms: UITextField!
    @IBOutlet weak var Cottons: UITextField!
    
    func CheckifFinish(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Done(_ sender: Any) {
        CheckifFinish()
    }
}

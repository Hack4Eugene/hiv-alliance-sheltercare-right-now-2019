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
    
    @IBOutlet var button:
        [DLRadioButton]!
    
    
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

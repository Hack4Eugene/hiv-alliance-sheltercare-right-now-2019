//
//  LastView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/28/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class LastView: UIViewController{
    
    
    @IBAction func Finish(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    
    
    
    var data : Dictionary<String,Any>?

}

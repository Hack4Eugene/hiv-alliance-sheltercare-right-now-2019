//
//  StaffView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit
class StaffView : UIViewController{
    
    @IBOutlet weak var ModifyButton: UIBarButtonItem!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setRightBarButton(ModifyButton, animated: true)
    }
    
}

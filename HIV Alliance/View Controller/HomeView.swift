//
//  HomeView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/26/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    @IBOutlet weak var survey: UIButton!
    
    @IBOutlet weak var Admin: UIButton!

}

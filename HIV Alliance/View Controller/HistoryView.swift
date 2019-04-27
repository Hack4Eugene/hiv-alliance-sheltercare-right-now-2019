//
//  HistoryView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import UIKit

class HistoryView: UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    @IBOutlet weak var tableView: UITableView!
    @IBAction func backbutton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func modifybutton(_ sender: Any) {
        performSegue(withIdentifier: "tomodify", sender: self)
    }
    @IBOutlet weak var Modify: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        let cellNib = UINib(nibName: "HistoryView", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier : "history")
        view.addSubview(tableView)
        navigationItem.setRightBarButton(Modify, animated: false)
        tableView.reloadData()
    
    }
    
}

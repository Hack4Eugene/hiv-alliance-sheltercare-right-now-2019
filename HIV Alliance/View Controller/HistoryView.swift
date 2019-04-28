//
//  CompletedView.swift
//  HIV Alliance
//
//  Created by Zhijie Chen on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

//import Foundation
//import UIKit
//
//class HistoryView: UIViewController, UITableViewDataSource,UITableViewDelegate{
//
//    @IBOutlet weak var tableView: UITableView!
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let cellNib = UINib(nibName: "HistoryView", bundle: nil)
//        tableView.register(cellNib, forCellReuseIdentifier : "history")
//        view.addSubview(tableView)
//        tableView.reloadData()
//    }
//    @IBAction func BackButton(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
//    }
//
//    @IBOutlet var timebutton :[UIButton]!
//    @IBAction func selecttime(_ sender: UIButton) {
//        timebutton.forEach{(button) in UIView.animate(withDuration: 0.3, animations: {button.isHidden = !button.isHidden
//            self.view.layoutIfNeeded()})
//
//        }
//    }
//    enum time: String{
//        case Today = "Today";
//        case Yesterday = "Yesterday"
//        case ThisWeek = "This Week"
//    }
//    @IBAction func timeset(_ sender: UIButton) {
//        guard let title = sender.currentTitle, let time = time(rawValue: title) else {return }
//        switch time{
//        case .Today:
//            tableView.reloadData()
//        case .Yesterday:
//            tableView.reloadData()
//        case .ThisWeek:
//            tableView.reloadData()
//
//        }
//    }
//
//
//
//
//}

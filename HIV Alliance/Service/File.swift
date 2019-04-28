//
//  File.swift
//  testDB
//
//  Created by Will Lin on 4/27/19.
//  Copyright © 2019 Will Lin. All rights reserved.
//

import Foundation
import SQLite


let path = NSSearchPathForDirectoriesInDomains(
    .documentDirectory, .userDomainMask, true
    ).first!
let db = try! Connection("/HIVAlliance.db")

let clients = Table("Clients")
func foo() {
    print(try! db.prepare(clients))
}

//
//  Sqliter.swift
//  HIV Alliance
//
//  Created by shui on 4/27/19.
//  Copyright © 2019 Zhijie Chen. All rights reserved.
//

import Foundation
import SQLite

class Sqlite{
    
    public init(){
        do{
            database = try Connection("db.sqlite3")
        }catch{
            print(error)
        }
    }
    
    func ListData(message : String?) -> Array<Dictionary<String,Any>>{
        var resume : Array<Dictionary<String,Any>>;
        do{
        if ((message) != nil){
            let user = self.table.filter(self.Nextid == message!)
                resume.append(["Nextid":user[self.Nextid],]) //数据全部需要
        }
        else{
            let users = try self.database.prepare(self.table)
            for user in users{ //id和性别
                resume.append(["Nextid":user[self.Nextid],])
                }
            }
        }
        catch{
            print(error)
        }
        return resume
    }
        
        

    var database : Connection!

    let table = Table("Clients")
    let Nextid = Expression<String>("id")
    let name = Expression<String>("name")
    let email = Expression<String>("email")

    
    static let shared = Sqlite()
}

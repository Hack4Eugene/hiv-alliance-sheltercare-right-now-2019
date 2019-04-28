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
         varDict = ["NEXID": nexid,
         "LastName": lastname,
         "DOB": dob,
         "SexAtBirth": sexatbirth,
         "Gender": gender,
         "Ethnicity": ethnicity,
         "Race": race,
         "HIVPos": hivpos,
         "Hepcpos": hepcpos,
         "EncounterDate": encounterdate,
         "Location": location,
         "Zip": zip,
         "Homeless": homeless,
         "HealthInsurance": healthinsurance,
         "ExchangedPreviously": exchangedpreviously,
         "WitnessedOD": witnessedod,
         "ExchangingForOthers": exchangingforothers,
         "EFOQty": efoqty,
         "SharedNeedle": sharedneedle,
         "LastHIVTest": lasthivtest,
         "LastHEPCTest": lasthepctest,
         "MedicalCondition": medicalcondition,
         "Detox": detox,
         "SyringesIN": syringesin,
         "SyringesOUT": syringesout,
         "Alcohol": alcohol,
         "Sharps": sharps,
         "Cotton": cotton,
         "Condoms": condoms]
    }
    
//    @IBAction func List(_ sender: Any) {
//        do{
//
//                let users = try database.prepare(self.table)
//                for user in users { //id和性别
//                    print("NEXID: \(user[self.nexid])")
//                }
//                self.insert()
//        }
//        catch{
//            print(error)
//        }
//    }
    
    func insert(dataDict : Dictionary<String, String>) {
        let insert = table.insert(nexid <- dataDict["NEXID"]!)
        let rowid = try! database.run(insert)
        /*
        for user in try! database.prepare(table) {
            print("id: \(user[id]), NEXID: \(user[nexid])")
        }
        */
        //print("inserted id: \(rowid)")
        let flt = table.filter(id == rowid)
        for (key, value) in dataDict {
            do {
                if varDict[key] is Expression<Int64> {
                    var temp : Int64
                    temp = Int64(value)!
                    try database.run(flt.update(self.varDict[key] as! Expression<Int64> <- temp))
                } else if varDict[key] is Expression<String> {
                    var temp : String
                    temp = String(value)
                    try database.run(flt.update(self.varDict[key] as! Expression<String> <- temp))
                }
            } catch {
                print(error)
            }
        }
    }
    
    let database = try! Connection("/Users/will/Desktop/testDB/testDB/HIVAlliance.db")
    let table = Table("Clients")
    let id = Expression<Int64>("id")
    let nexid = Expression<String>("NEXID")
    let lastname = Expression<String>("LastName")
    let dob = Expression<String>("DOB")
    let sexatbirth = Expression<String>("SexAtBirth")
    let gender = Expression<String>("Gender")
    let ethnicity = Expression<String>("Ethnicity")
    let race = Expression<String>("Race")
    let hivpos = Expression<String>("HIVPos")
    let hepcpos = Expression<String>("Hepcpos")
    let encounterdate = Expression<String>("EncounterDate")
    let location = Expression<String>("Location")
    let zip = Expression<Int64>("Zip")
    let homeless = Expression<String>("Homeless")
    let healthinsurance = Expression<String>("HealthInsurance")
    let exchangedpreviously = Expression<String>("ExchangedPreviously")
    let witnessedod = Expression<String>("WitnessedOD")
    let exchangingforothers = Expression<String>("ExchangingForOthers")
    let efoqty = Expression<Int64>("EFOQty")
    let sharedneedle = Expression<String>("SharedNeedle")
    let lasthivtest = Expression<Int64>("LastHIVTest")
    let lasthepctest = Expression<Int64>("LastHEPCTest")
    let medicalcondition = Expression<String>("MedicalCondition")
    let detox = Expression<String>("Detox")
    let syringesin = Expression<Int64>("SyringesIN")
    let syringesout = Expression<Int64>("SyringesOUT")
    let alcohol = Expression<Int64>("Alcohol")
    let sharps = Expression<Int64>("Sharps")
    let cotton = Expression<Int64>("Cotton")
    let condoms = Expression<Int64>("Condoms")
    
    //var varDict : Dictionary<String,Any>?
    var varDict : Dictionary<String,Any>
    static let shared = Sqlite()
}

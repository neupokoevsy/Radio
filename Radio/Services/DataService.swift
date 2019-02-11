//
//  DataService.swift
//  Radio
//
//  Created by Sergey Neupokoev on 11/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import Foundation

class dataService {
    static let instance = dataService()
    
    private let stations = [
        Stations(title: "Radio Record", url: "http://air.radiorecord.ru:805/rr_128?rand=53573354"),
        Stations(title: "TranceMission", url: "http://air.radiorecord.ru:805/tm_128"),
        Stations(title: "Record Deep", url: "http://air.radiorecord.ru:805/deep_128")
        
    ]
    
    func getStations() -> [Stations] {
        return stations
    }
}

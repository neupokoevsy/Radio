//
//  Stations.swift
//  Radio
//
//  Created by Sergey Neupokoev on 11/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import Foundation

struct Stations {
    private(set) public var title: String
    private(set) public var url: String
    
    init(title: String, url: String) {
        self.title = title
        self.url = url
    }
}

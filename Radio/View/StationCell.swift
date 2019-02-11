//
//  StationCell.swift
//  Radio
//
//  Created by Sergey Neupokoev on 11/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class StationCell: UITableViewCell {

    @IBOutlet weak var radioName: UILabel!
    
    func updateView(station: Stations) {
        radioName.text = station.title
    }
}

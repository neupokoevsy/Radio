//
//  ViewController.swift
//  Radio
//
//  Created by Sergey Neupokoev on 11/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var StationTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        StationTable.dataSource = self
        StationTable.delegate = self
        print(dataService.instance.getStations().count)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.instance.getStations().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "StationCell") as? StationCell {
            let stations = dataService.instance.getStations()[indexPath.row]
            cell.updateView(station: stations)
            return cell
        } else {
            return StationCell()
        }
    }


}


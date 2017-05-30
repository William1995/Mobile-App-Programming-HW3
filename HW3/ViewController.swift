//
//  ViewController.swift
//  HW3
//
//  Created by William on 2017/5/26.
//  Copyright © 2017年 William. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var AirportList : [[String: String]] = []
    
    var airportimages = ["MUC.jpg", "KUL.jpg","IAD.jpg", "IAH.jpg", "ORD.jpg", "TSA.jpg", "SYD.jpg", "YVR.jpg", "YYZ.jpg", "PEK.jpg", "PVG.jpg", "CAN.jpg", "CKG.jpg", "CDG.jpg", "FRA.jpg", "HKG.jpg", "NRT.jpg", "HND.jpg", "KIX.jpg", "NGO.jpg", "OKA.jpg", "CTS.jpg", "AMS.jpg", "SIN.jpg","ICN.jpg", "TPE.jpg", "KHH.jpg", "BKK.jpg", "LHR.jpg", "SFO.jpg", "LAX.jpg", "JFK.jpg", "SEA.jpg", "ATL.jpg","DTW.jpg", "SVO.jpg", "DME.jpg", "EDI.jpg", "GMP.jpg", "MNL.jpg",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "airports", ofType: "plist")
        AirportList = NSArray(contentsOfFile: path!) as! [[String: String]]

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (AirportList.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            as! FirstPage
        
        cell.Country.text = (AirportList[indexPath.row]["Country"])
        cell.ShortName.text = (AirportList[indexPath.row]["IATA"])
        cell.City.text = (AirportList[indexPath.row]["ServedCity"])
        cell.Airport.text = (AirportList[indexPath.row]["ShortName"])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
               let destinationController = segue.destination as! SecondPage
                
                destinationController.airportimage = airportimages[indexPath.row]
                destinationController.airportname = (AirportList[indexPath.row]["Airport"])!
                destinationController.airportcountry = (AirportList[indexPath.row]["Country"])!
                destinationController.airportcity = (AirportList[indexPath.row]["ServedCity"])!
                }
        }
    }
    
}

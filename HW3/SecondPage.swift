//
//  SecondPage.swift
//  HW3
//
//  Created by William on 2017/5/26.
//  Copyright © 2017年 William. All rights reserved.
//

import UIKit

class SecondPage: UIViewController {
    

    @IBOutlet weak var AirportName: UILabel!
    @IBOutlet weak var AirportCountry: UILabel!
    @IBOutlet weak var AirportCity: UILabel!
    
    @IBOutlet weak var AirportImage: UIImageView!
    
    var airportname = ""
    var airportcountry = ""
    var airportcity = ""
    var airportimage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AirportName.text = airportname
        AirportCountry.text = "COUNTRY  :" + airportcountry
        AirportCity.text = "CITY  :" + airportcity
        AirportImage.image = UIImage(named: airportimage)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

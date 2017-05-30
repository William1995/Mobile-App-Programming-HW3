//
//  firstpage.swift
//  HW3
//
//  Created by William on 2017/5/26.
//  Copyright © 2017年 William. All rights reserved.
//

import UIKit

class FirstPage: UITableViewCell{
    

    @IBOutlet weak var Country: UILabel!
    @IBOutlet weak var Airport: UILabel!
    @IBOutlet weak var ShortName: UILabel!
    @IBOutlet weak var City: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

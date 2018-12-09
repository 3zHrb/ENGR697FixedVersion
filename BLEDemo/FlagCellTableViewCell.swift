//
//  FlagCellTableViewCell.swift
//  BLEDemo
//
//  Created by Abdulaziz Alharbi on 12/8/18.
//  Copyright © 2018 Rick Smith. All rights reserved.
//

import UIKit

class FlagCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var timeStampLable: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

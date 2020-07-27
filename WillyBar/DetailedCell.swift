//
//  DetailedCell.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/27.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class DetailedCell: UITableViewCell {

    @IBOutlet weak var material: UILabel!
    @IBOutlet weak var unit: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

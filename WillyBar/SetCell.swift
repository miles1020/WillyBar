//
//  SetCell.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/27.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class SetCell: UITableViewCell {

    @IBOutlet weak var setImageView: UIImageView!
    @IBOutlet weak var leftTitle: UILabel!
    @IBOutlet weak var rightTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

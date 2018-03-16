//
//  CellGender.swift
//  PracticaApp
//
//  Created by DAM on 16/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class CellGender: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

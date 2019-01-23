//
//  customTableViewCell.swift
//  example_TableView
//
//  Created by Pol monleon vives on 23/01/2019.
//  Copyright © 2019 Pol monleon vives. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var etiqueta: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

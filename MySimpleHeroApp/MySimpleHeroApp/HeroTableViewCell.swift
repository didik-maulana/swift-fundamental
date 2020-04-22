//
//  HeroTableViewCell.swift
//  MySimpleHeroApp
//
//  Created by Mamikos on 22/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class HeroTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameHeroLabel: UILabel!
    @IBOutlet weak var descriptionHeroLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

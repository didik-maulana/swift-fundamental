//
//  DetailViewController.swift
//  MySimpleHeroApp
//
//  Created by Mamikos on 22/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameHeroLabel: UILabel!
    @IBOutlet weak var photoHeroImageView: UIImageView!
    @IBOutlet weak var descriptionHeroLabel: UILabel!
    
    var hero: Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = hero {
            nameHeroLabel.text = result.name
            descriptionHeroLabel.text = result.description
            photoHeroImageView.image = result.photo
        }
    }
}

//
//  DetailViewController.swift
//  DicodingApps
//
//  Created by Mamikos on 21/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var detail: (title: String?, description: String?, image: UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = detail.title
        descriptionLabel.text = detail.description
        logoImageView.image = detail.image
    }
}

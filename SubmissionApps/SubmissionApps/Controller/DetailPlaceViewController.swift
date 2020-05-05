//
//  DetailPlaceViewController.swift
//  SubmissionApps
//
//  Created by Mamikos on 26/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class DetailPlaceViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var placeModel: Place?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let place = placeModel {
            photoImageView.image = place.photo
            titleLabel.text = place.title
            descriptionLabel.text = place.description
        }
    }
}

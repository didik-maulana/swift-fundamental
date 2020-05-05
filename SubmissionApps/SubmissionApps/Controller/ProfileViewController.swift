//
//  ProfileViewController.swift
//  SubmissionApps
//
//  Created by Mamikos on 24/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        
        photoImageView.layer.cornerRadius = 40
        photoImageView.layer.masksToBounds = true
    }
}

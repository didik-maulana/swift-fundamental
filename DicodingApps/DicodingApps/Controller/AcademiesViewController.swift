//
//  AcademiesViewController.swift
//  DicodingApps
//
//  Created by Mamikos on 21/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var androidAcademyStackView: UIStackView!
    @IBOutlet weak var unityAcademyStackView: UIStackView!
    @IBOutlet weak var cloudAcademyStackView: UIStackView!
    @IBOutlet weak var arAcademyStackView: UIStackView!
    
    var academies = [
        ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
        ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
        ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
        ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
        ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTapped(parameter: &androidAcademyStackView)
        addTapped(parameter: &unityAcademyStackView)
        addTapped(parameter: &cloudAcademyStackView)
        addTapped(parameter: &arAcademyStackView)
    }
    
    func addTapped(parameter: inout UIStackView) {
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        let detailController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DetailViewControllerScene") as! DetailViewController
        switch gesture.view as? UIStackView {
        case androidAcademyStackView:
            detailController.detail = academies[0]
        case unityAcademyStackView:
            detailController.detail = academies[1]
        case arAcademyStackView:
            detailController.detail = academies[2]
        case cloudAcademyStackView:
            detailController.detail = academies[3]
        default:
            detailController.detail = academies[4]
        }
        self.present(detailController, animated: true, completion: nil)
    }
}

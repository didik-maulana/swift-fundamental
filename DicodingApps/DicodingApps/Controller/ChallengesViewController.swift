//
//  ChallengesViewController.swift
//  DicodingApps
//
//  Created by Mamikos on 21/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {
    
    @IBOutlet weak var arChallengeStackView: UIStackView!
    @IBOutlet weak var digitalChallengeStackView: UIStackView!
    @IBOutlet weak var expertChallengeStackView: UIStackView!
    @IBOutlet weak var flutterChallengeStackView: UIStackView!
    @IBOutlet weak var webChallengeStackView: UIStackView!
    
    var challenges = [
        ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
        ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
        ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
        ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
        ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
        ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapped(parameter: &arChallengeStackView)
        addTapped(parameter: &digitalChallengeStackView)
        addTapped(parameter: &expertChallengeStackView)
        addTapped(parameter: &flutterChallengeStackView)
        addTapped(parameter: &webChallengeStackView)
    }
    
    func addTapped(parameter: inout UIStackView) {
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        let detailController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DetailViewControllerScene") as! DetailViewController
        switch gesture.view as? UIStackView {
        case arChallengeStackView:
            detailController.detail = challenges[0]
        case digitalChallengeStackView:
            detailController.detail = challenges[1]
        case expertChallengeStackView:
            detailController.detail = challenges[2]
        case flutterChallengeStackView:
            detailController.detail = challenges[3]
        case webChallengeStackView:
            detailController.detail = challenges[4]
        default:
            detailController.detail = challenges[5]
        }
        self.navigationController?.pushViewController(detailController, animated: true)
    }

}

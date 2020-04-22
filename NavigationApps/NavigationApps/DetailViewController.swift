//
//  DetailViewController.swift
//  NavigationApps
//
//  Created by Mamikos on 22/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backAction))
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func backAction() -> Void {
        dismiss(animated: true, completion: nil)
    }
}

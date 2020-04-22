//
//  ViewController.swift
//  NavigationApps
//
//  Created by Mamikos on 22/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        let button = UIButton(frame: CGRect(x: 160, y: 320, width: 70, height: 30))
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton) {
        let viewController = UINavigationController(rootViewController: DetailViewController())
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true, completion: nil)
    }
}


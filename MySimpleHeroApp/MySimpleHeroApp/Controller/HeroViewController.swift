//
//  HeroViewController.swift
//  MySimpleHeroApp
//
//  Created by Mamikos on 22/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class HeroViewController: UIViewController {

    @IBOutlet weak var heroTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Indonesian Hero"
        
        heroTableView.dataSource = self
        heroTableView.delegate = self
        heroTableView.register(UINib(nibName: "HeroTableViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }
}

extension HeroViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell", for: indexPath) as! HeroTableViewCell
        
        let hero = heroes[indexPath.row]
        cell.nameHeroLabel.text = hero.name
        cell.descriptionHeroLabel.text = hero.description
        cell.photoImageView.image = hero.photo
        
        cell.photoImageView.layer.cornerRadius = cell.photoImageView.frame.height / 2
        cell.photoImageView.clipsToBounds = true
        return cell
    }
}

extension HeroViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detail.hero = heroes[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

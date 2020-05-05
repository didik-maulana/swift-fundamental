//
//  ViewController.swift
//  SubmissionApps
//
//  Created by Mamikos on 24/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var placeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Beatiful Indonesia Places"
        
        placeTableView.delegate = self
        placeTableView.dataSource = self
        placeTableView.register(UINib(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier: "PlaceTableViewCell")
    }
    
    @IBAction func openProfileView(_ sender: Any) {
        let profileController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(profileController, animated: true)
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let placeCell = tableView.dequeueReusableCell(withIdentifier: "PlaceTableViewCell", for: indexPath) as! PlaceTableViewCell
        let place = places[indexPath.row]
        
        placeCell.photoImageView.image = place.photo
        placeCell.titleLabel.text = place.title
        return placeCell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailPlaceController = DetailPlaceViewController(nibName: "DetailPlaceViewController", bundle: nil)
        detailPlaceController.placeModel = places[indexPath.row]
        self.navigationController?.pushViewController(detailPlaceController, animated: true)
    }
}


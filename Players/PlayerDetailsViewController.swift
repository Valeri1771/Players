//
//  PlayerDetailsViewController.swift
//  Players
//
//  Created by Valeri Tsyganova on 14.01.2021.
//

import UIKit

class PlayerDetailsViewController: UIViewController {

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.name
        navigationController?.navigationBar.prefersLargeTitles = true
        positionLabel.text = player?.position
        ageLabel.text = player?.age
        heightLabel.text = player?.height
        weightLabel.text = player?.weight
    }

}
    

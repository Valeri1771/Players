//
//  PlayersViewController.swift
//  Players
//
//  Created by Valeri Tsyganova on 14.01.2021.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    let players: [Player] = [
    Player(name: "Yaroslav Askarov",
           position: "Goaltender",
           age: "18 years (16.06.2002)",
           height: "191 cm",
           weight: "80 kg"
           ),
    
    Player(name: "Alexander Samonov",
            position: "Goaltender",
            age: "25 years (23.08.1995)",
            height: "181 cm",
            weight: "76 kg"
            ),
        
    Player(name: "Magnus Hellberg",
            position: "Goaltender",
            age: "29 years (04.04.1991)",
            height: "197 cm",
            weight: "85 kg"
            ),
        
    Player(name: "Oscar Fantenberg",
            position: "Defenseman",
            age: "29 years (07.10.1991)",
            height: "184 cm",
            weight: "92 kg"
            ),
    
    Player(name: "Yaroslav Dyblenko",
            position: "Defenseman",
            age: "27 years (28.12.1993)",
            height: "186 cm",
            weight: "94 kg"
            ),
        
    Player(name: "Anton Belov",
            position: "Defenseman",
            age: "34 years (29.07.1986)",
            height: "193 cm",
            weight: "100 kg"
            ),
        
    Player(name: "Joonas Kemppainen",
            position: "Forward",
            age: "32 years (07.04.1988)",
            height: "191 cm",
            weight: "103 kg"
            ),
        
    Player(name: "Ivan Morozov",
             position: "Forward",
             age: "20 years (05.05.2000)",
             height: "186 cm",
             weight: "81 kg"
            ),
    
    Player(name: "Evgeny Ketov",
             position: "Forward",
             age: "34 years (17.01.1986)",
             height: "184 cm",
             weight: "91 kg"
             ),
    
    ]
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Players"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        let player = players[indexPath.row]
        cell.textLabel?.text = player.name
        cell.detailTextLabel?.text = player.position
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let playerDetailsViewController = storyboard.instantiateViewController(identifier: "PlayerDetails") as! PlayerDetailsViewController
        
        let player = players[indexPath.row]
        playerDetailsViewController.player = player
        
        navigationController?.pushViewController(playerDetailsViewController, animated: true)
        
    }

}

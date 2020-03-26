//
//  ViewController.swift
//  MyPlaces
//
//  Created by ADMIN on 26/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    let resataurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
     ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    // MARK: - Table view data souce
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resataurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = resataurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: resataurantNames[indexPath.row ])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
}   


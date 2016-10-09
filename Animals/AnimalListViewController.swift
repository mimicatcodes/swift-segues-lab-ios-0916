//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var animalsList = [
    "Dog",
    "Cat",
    "Mouse",
    "Hamster",
    "Bunny",
    "Panda",
    "Lion",
    "Pig",
    "Frog",
    "Octopus"
    ]
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animal = animalsList[indexPath.row]
        cell.textLabel?.text = animal
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AnimalDetailView" {
        
        //this code do the passing of information
        if let dest = segue.destination as? AnimalViewController,
            
            let indexPath = tableView.indexPathForSelectedRow{
            
            dest.animal = animalsList[indexPath.row]
            
            }
            
        }
        
    }
    
    
    
    
    
    
    
}

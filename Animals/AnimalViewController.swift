//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        if let animal = animal {
            nameLabel.text = animal
            emojiMatched(animal: animal)
            navigationItem.title = animal
        }
    }
    
    func emojiMatched(animal:String){
        switch animal {
            case "Dog":
                emojiLabel.text = "🐶"
            case "Cat":
                emojiLabel.text = "🐱"
            case "Mouse":
                emojiLabel.text = "🐭"
            case "Hamster":
                emojiLabel.text = "🐹"
            case "Bunny":
                emojiLabel.text = "🐰"
            case "Panda":
                emojiLabel.text = "🐼"
            case "Lion":
                emojiLabel.text = "🦁"
            case "Pig":
                emojiLabel.text = "🐷"
            case "Frog":
                emojiLabel.text = "🐸"
            case "Octopus":
                emojiLabel.text = "🐙"
            default:
                emojiLabel.text = ""
        }
    }
}


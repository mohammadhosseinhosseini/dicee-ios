//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let dices: [String] = [
                 "DiceOne",
                 "DiceTwo",
                 "DiceThree",
                 "DiceFour",
                 "DiceFive",
                 "DiceSix"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
    }
    func randomFromArray(arr: [String]) -> String {
        return arr[Int.random(in: 0...(arr.count-1))]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = UIImage(named: randomFromArray(arr: dices))
        diceImageView2.image = UIImage(named: randomFromArray(arr: dices))
    }
    
}


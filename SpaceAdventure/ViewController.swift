//
//  ViewController.swift
//  SpaceAdventure
//
//  Created by Ehiin on 4/20/17.
//  Copyright © 2017 Softveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickLabel: UILabel!
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var playButton: UIButton!
    
    var xPosition = 0
    var yPosition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        playButton.isHidden = true
        
        gameView.isHidden = false
        clickLabel.isHidden = false
    }
    
    func generateRandomPosition() {
        xPosition = Int(arc4random_uniform(200))
        yPosition = Int(arc4random_uniform(250))
    }
}


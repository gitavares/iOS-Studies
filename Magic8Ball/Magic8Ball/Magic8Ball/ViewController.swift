//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Giselle Tavares on 29/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!
    
    let ballArray : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ballRandomValue : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
    }
    
    @IBAction func buttonAsk(_ sender: UIButton) {
        updateBall()
    }
    
    func updateBall() {
        ballRandomValue = Int(arc4random_uniform(5))
        
        ballView.image = UIImage(named: ballArray[ballRandomValue])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    


}


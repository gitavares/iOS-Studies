//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(tag: sender.tag)
    }
    
    func playSound(tag: Int) {
        let soundURL = Bundle.main.path(forResource: "note\(tag)", ofType: "wav")!
        
        //        try! audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
        } catch let error as Error {
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}


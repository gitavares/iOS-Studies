//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    let stories = StoryBank()
    var pickedAnswer: Int = 1
    var currentStory: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
        nextStory()
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        switch sender.tag {
        case 1:
            switch currentStory {
            case 0:
                currentStory = 2
            case 1:
                currentStory = 2
            case 2:
                currentStory = 5
            default:
                break
            }
        case 2:
            switch currentStory {
            case 0:
                currentStory = 1
            case 1:
                currentStory = 3
            case 2:
                currentStory = 4
            default:
                break
            }
        default:
            break
        }
        nextStory()
    
    }
    
    @IBAction func btnRestart(_ sender: UIButton) {
        currentStory = 0
        nextStory()
    }
    
    func showStory() {
        storyTextView.text = stories.stories[currentStory].storyDescription
    }
    
    func showAnswers() {
        topButton.setTitle(stories.stories[currentStory].answerA, for: .normal)
        bottomButton.setTitle(stories.stories[currentStory].answerB, for: .normal)
    }
    
    func nextStory() {
        showStory()
        showAnswers()
    }
    


}


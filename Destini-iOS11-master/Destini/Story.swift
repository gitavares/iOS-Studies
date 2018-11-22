//
//  Stories.swift
//  Destini
//
//  Created by Giselle Tavares on 21/11/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story{
    var storyDescription: String
    var answerA: String?
    var answerB: String?
    
    init(storyDescription: String, answerA: String?, answerB: String?) {
        self.storyDescription = storyDescription
        self.answerA = answerA
        self.answerB = answerB
    }
}

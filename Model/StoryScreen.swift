//
//  StoryScreen.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 23/04/22.
//

import Foundation
import SwiftUI

struct StoryScreen: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var description: String
}

let title = "My Story Chapter 1"
let description = """
        
        "Intro"
        
        Hello, Faizal Here!
        
        Recently, My best friend had an issue with his life, his focus and his studies
        
        Previously I had the same problem as he is
        
        he doesn't know what his life mission is, where he wanted to go, what's his purpose, where his future would be,
        
        and because of that he get lost and demotivated in his study. he felt that he's got a wrong major in his university,
        
        when he want's to fix his problem, they don't know where to begin
        
        and as it turns out, many of his friends and mine too had the exact same problem
        
        but the difference is i have "somewhat" figure this out by "connecting the dots"
        
        inspired by steve jobs who are using this method
        
        So i create this app to share how do i solve the problem by telling you a story about my self first
        
        hopefuly from this you can learn from my experience and use this formula for your own benefit
        
        "Connecting the dots"
        
        I want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience
        
        There are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way
        
        """

var storyScreens: [StoryScreen] = [
    StoryScreen(image: "MainCharacter", title: title, description: description),
    StoryScreen(image: "automobile", title: title, description: description),
    StoryScreen(image: "racing-car", title: title, description: description),
    StoryScreen(image: "sportutility", title: title, description: description),
]

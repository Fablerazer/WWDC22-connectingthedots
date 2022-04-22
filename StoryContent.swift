//
//  Data.swift
//  WWDC2022 Faizal
//
//  Created by Faizal Hudya Rizfianto on 13/04/22.
//

import Foundation
import SwiftUI

let story = Story(pages: [
    // MARK: - StoryPage 0
    StoryPage( // 0
        
        """
        
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
        
        """,
        choices: [
            Choice(text: "Next", destination: 1),
        ]
    ),
    
    // MARK: - StoryPage 1
    StoryPage( // 1
        """
        Luckily, some nice people fill in around you and wave politely. The directions sounds fun! Make a sponge cake you would have wanted as a child for your birthday, focusing on the decorations and theme. The top three bakers will win a cash prize. You start with a theme.
        """,
        choices: [
            Choice(text: "Next", destination: 2),
        ]
    ),
    
    // MARK: - StoryPage 2
    StoryPage( // 2
        """
        Good thinking! You can complete most of your decorations while your cake continues to cool. You work hard and, before you know it, the competition is over and your cake looks spectacular. You come in 3rd place!🥉
        
        🎉💵You are a cash prize winner!💵🥳
        """,
        choices: []
    )
])

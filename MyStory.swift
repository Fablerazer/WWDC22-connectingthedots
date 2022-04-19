//
//  Data.swift
//  WWDC2022 Faizal
//
//  Created by Faizal Hudya Rizfianto on 13/04/22.
//

import Foundation
import SwiftUI

let story = Story(pages: [
    StoryPage( // 0
        
        """
        Welcome to Choose Your Own Story
        🥖🍪Bake Off!🥐🍰
        
        You enter a local baking competition at the county fair 🎪. It’s a beautiful summer day and you are excited! When you enter the room, you look around to see ten identical stations.
        
        Each station is stocked with bowls of different sizes, spatulas, spoons, and a standing mixer. You are the third to arrive, so there are many stations still available. Where do you sit?
        """,
        choices: [
            Choice(text: "Front row!", destination: 1),
            Choice(text: "Find somewhere in the middle", destination: 1),
            Choice(text: "Back of the room", destination: 1),
        ]
    ),
    StoryPage( // 1
        """
        Luckily, some nice people fill in around you and wave politely. The directions sounds fun! Make a sponge cake you would have wanted as a child for your birthday, focusing on the decorations and theme. The top three bakers will win a cash prize. You start with a theme.
        """,
        choices: [
            Choice(text: "Trains", destination: 2),
            Choice(text: "Castles", destination: 2),
            Choice(text: "Rainbows", destination: 2),
            Choice(text: "Woodland creatures", destination: 2),
            Choice(text: "Outer space", destination: 2),
        ]
    ),
    StoryPage( // 2
        """
        Good thinking! You can complete most of your decorations while your cake continues to cool. You work hard and, before you know it, the competition is over and your cake looks spectacular. You come in 3rd place!🥉
        
        🎉💵You are a cash prize winner!💵🥳
        """,
        choices: []
    )
])

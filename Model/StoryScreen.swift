//
//  StoryScreen.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 23/04/22.
//  Best build & run on Ipad Pro 11 inch


import Foundation
import SwiftUI

struct StoryScreen: Identifiable {
    var id = UUID().uuidString
    var image: String
    //    var uicolor: String
    var title: String
    var chapter: String
    var description: String
}

let title = "Connecting The Dots"

var storyScreens: [StoryScreen] = [
    StoryScreen(image: "MainCharacter", title: title, chapter: "Introduction", description: "Hello, Faizal Here!\n\nI'm from Indonesia\nIf you are confused where it is\nBali is the word for you\n😅\n\nI love design, tech, and startup related \nI'm also interested in finance and music"),
    StoryScreen(image: "automobile", title: title,chapter: "Introduction", description: "Recently, My best friend had an issue with his life focus and his studies\n\nPreviously I had the same problem as he is\n\nhe doesn't know what his life mission is, where he wanted to go, what's his purpose, where his future would beand because of that he get lost and demotivated in his study. he felt that he's got a wrong major in his university,\n\nwhen he want's to fix his problem, they don't know where to begin\n\nand as it turns out, many of his friends and mine too had the exact same problem"),
    StoryScreen(image: "racing-car", title: title,chapter: "Introduction", description: "but the difference is i have `somewhat` figuring this out by `connecting the dots`\n\ninspired by steve jobs who are using this method\n\nSo i create this Swift Playgrounds app project to share how do i solve the problem by telling you a story about my self first\n\nhopefuly from this you can learn from my experience and use this formula for your own benefit"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
]

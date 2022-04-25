//
//  StoryScreen.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 23/04/22.
//  Best build & run on Ipad Pro 11 inch


import Foundation
import SwiftUI

struct StoryScreen3: Identifiable {
    var id = UUID().uuidString
    var image3: String
    //    var uicolor: String
    var title3: String
    var chapter3: String
    var description3: String
}

let title3 = "Connecting The Dots"

var storyScreens3: [StoryScreen3] = [
    StoryScreen3(image3: "MainCharacter", title3: title3, chapter3: "Introduction", description3: "Hello, Faizal Here!\n\nI'm from Indonesia\nIf you don't know where it is\nBali is the word for you 😅\n\nI love to build something, especially about design, tech, and startup related\nI'm also interested in finance and music"),
    StoryScreen3(image3: "1", title3: title3, chapter3: "Introduction", description3: "In the past, i had a problem with my life purpose. \n\nIt's like i don't have an image about what i want to become in the future, \n\nNot doing something new, stay's the same as before, procrastinating all the time\n\n📉📉📉"),
    StoryScreen3(image3: "11", title3: title3, chapter3: "Introduction", description3: "meaningless experience to another meaningless experience\n\njust doing the bare minimum, not putting more effort into something\n\nand all of that causing me to absorb a lot of negative energy back then\n\n🪫🪫🪫"),
    
    
    
    
    
    
//    StoryScreen(image: "MainCharacter", title: title, chapter: "Introduction", description: "
//    I was always bad at drawing, but i didn't know where to start learning
//  A blank canvas can be scary especially with a complex reference
//  However, we can break down the reference into simple shapes, That way it will be easier to draw
//  Let's start with something simple, starring the .....
//  Imagine cutting up the bottle into simple shapes
//  Then the smaller shape for more detail
//  Doesn't it look easier to draw?
//  When split up, they are just simple shapes
//  Try it out for yourself!
//
//    "),
    
    // In the past, i had a problem with my life purpose. it's like i don't have an image about what i want to become in the future
    // Not doing something new, stay's the same as before, meaningless experience to another meaningless experience, just doing the bare minimum, not putting more effort into something,
    // and all of that causing me to absorb a lot of negative energy back then
    // It's dark and empty, i feel hopeless, I'm asking to myself, `why i should live in this world? what is my purpose?`
    //  And i'm not alone, not too long ago my best friend opened up to me about his deepest fear and a lot of his friends and my other friends who had the same problem that i had went through in the past
    //  Because i know what it feels when having that exact kind of problem, I wanna help them to rise up! and persuade them be the best version of themselves
    //
    //  First of all we have to start from the past
    
    //  why can we be the person we are today?, what is the causality?, and how we can improve what we have within us and boost it to our own benefit
    //
    //  and also this method is used by founder of Apple `Steve Jobs`\n\nIt's called `connecting the dots`
    
    //  but before that i want you to do a minigames that's literally about connecting the dots 😅
    
    
    
    
    // ''You have to trust that the dots will somehow connect in your future, because believing that the dots will connect down the road, will give you the confidence to follow your heart. Even when it leads you off the worn path, and that will make all the difference''
    
    //  From 3 of the most focused thing that i grind about, one of them is about design and i want to give you the example and share with you how i cope with this problem
    
    // ''You can't connect the dots by looking forward, you can only connect them by looking backwards''
    //
    //  To summ it up
    //  Know that we all have challenges, and knowing that they only makes us stronger
    //  To connecting the dots is needing a combination between embracing our past, determination and future vision, do that and trust everything will work out perfectly in the end
    //  Stay Hungry, Stay Foolish
    //
    //
    // "Every one's journey is different, so find what truly you and yours only"
    //
    //
    //
    //
    //
    //
    
//    StoryScreen(image: "automobile", title: title,chapter: "Introduction", description: "Recently, My best friend had an issue with his life focus and his studies\n\nPreviously I had the same problem as he is\n\nhe doesn't know what his life mission is, where he wanted to go, what's his purpose, where his future would be and because of that he get lost and demotivated in his study. he felt that he's got a wrong major in his university,\n\nwhen he want's to fix his problem, they don't know where to begin\n\nand as it turns out, many of his friends and mine too had the exact same problem"),
//    StoryScreen(image: "racing-car", title: title,chapter: "Introduction", description: "but the difference is i have `somewhat` figuring this out by `connecting the dots`\n\ninspired by steve jobs who are using this method\n\nSo i create this Swift Playgrounds app project to share how do i solve the problem by telling you a story about my self first\n\nhopefuly from this you can learn from my experience and use this formula for your own benefit"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
//    StoryScreen(image: "sportutility", title: title,chapter: "Introduction", description: "`Connecting the dots`\n\nI want to tell you a story about how you can find your passion and interest by connecting the dot within your lifetime experience\n\nThere are 3 mini games in this story, and two of them will simply let you learn how to code and how to design an easy way"),
]

//var previews: some View {
//        StoryView( level: 2)
//    }


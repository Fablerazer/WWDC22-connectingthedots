//
//  StoryView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 14/04/22.
//

import Foundation
import SwiftUI

struct StoryView: View {

    var body: some View {
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

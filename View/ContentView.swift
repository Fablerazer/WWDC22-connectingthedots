//
//  StoryView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 14/04/22.
//  Best build & run on Ipad Pro 11 inch


import Foundation
import SwiftUI

//final class AppState : ObservableObject{
//    @Published var rootViewId = UUID()
//}

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        IntroConnectingLine()
            .id(appState.rootViewId)
    }
}

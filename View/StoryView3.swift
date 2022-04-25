//
//  StoryView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 23/04/22.
//  Best build & run on Ipad Pro 11 inch


import Foundation
import SwiftUI

struct StoryView3: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var appState: AppState
    let level:Int
    
    @State var offset: CGFloat = 0
    @State var showNavigation: Bool = false
    @State var showReading: Bool = true

    
    var body: some View {
        
        // Custom View
        OffsetPageTabView(offset: $offset) {
            
            // Show Navigation Button
//            if getIndex() == 7 {
//                showNavigation == true
//            } else {
//                showNavigation == false
//            }
            
            HStack(spacing: 0){
                
                ForEach(storyScreens3){screen in
                    VStack(spacing: 15){
                        Text(screen.title3)
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 70, leading: 80, bottom: 0, trailing: 80))
                        
                        Text(screen.chapter3)
                            .font(.title.bold())
                            .underline(true, color: .orange)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 80, bottom: 30, trailing: 80))

                        
                        Image(screen.image3)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getScreenBounds().width - 100*2, height: getScreenBounds().width - 100*5)
                        // small screen adoption...
                            .scaleEffect(getScreenBounds().height < 750 ? 0.8 : 1)
                            .scaleEffect(getScreenBounds().height > 2000 ? 0.5 : 1)
                            .scaleEffect(getScreenBounds().height < 1700 ? 0.7 : 1)
                            .offset(y: getScreenBounds().height < 750 ? +10 : +20)
                        
                        VStack(alignment: .center, spacing: 12){
                            
                            Text(screen.description3)
                                .font(.system(Font.TextStyle.title, design: .rounded))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .padding(EdgeInsets(top: 0, leading: 80, bottom: 70, trailing: 80))
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding()
                    .frame(width: getScreenBounds().width)
                    .frame(maxHeight: .infinity)
                }
                
            }
            
            
        }
        // Animation...
        .background(
            
            RoundedRectangle(cornerRadius: 50)
                .fill(.black)
            // Size as image size...
                .frame(width: getScreenBounds().width - 100,height:
                        getScreenBounds().width - 100)
                .scaleEffect(2)
                .rotationEffect(.init(degrees: 33))
                .rotationEffect(.init(degrees: getRotation()))
                .offset(y: -getScreenBounds().width - 220)
            
            ,alignment: .leading
        )
        .background(
            Color("screen1-\(getIndex() + 1)")
                .animation(.easeInOut, value: getIndex())
        )
        
        
        // Ignoring SafeArea for Animation...
        .ignoresSafeArea(.container, edges: .all)
        .overlay(
            
            VStack{
                
                // Bottom Content...
                    HStack(spacing: 25){
                        
                        if showNavigation == false {
                            
                            Button("Done Swiping?"){
                                showNavigation.toggle()
                                showReading.toggle()
                            }
                            .font(.title2.bold())
                        }
                        // NavigationLink...
                        if showNavigation == true {

                            NavigationLink(destination: ConnectingLine(level: 3), label:{
                                Text("Next Page")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 20)
                                    .frame(width: 215)
                                    .background(Color.black,in:
                                                    RoundedRectangle(cornerRadius: 12))
                                
                            })
                        }
                    }
//                    .navigationBarHidden(getIndex() == 7)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                
                
                HStack{
                    
                    // Skip Button...
                    Button{
                        
                    } label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .foregroundColor(.clear)
                    }
                    
                    // Indicators...
                    HStack(spacing: 8){
                        ForEach(storyScreens3.indices,id: \.self){index in
                            Circle()
                                .fill(.black)
                                .opacity(index == getIndex() ? 1 : 0.4)
                                .frame(width: 8, height: 8)
                                .scaleEffect(index == (getIndex()) ? 1.3 : 0.85)
                                .animation(.easeInOut, value: getIndex())
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    // Next Button...
                    Button{
                        // Setting Mac Offset...
                        // max 7 screens(6*width)...
                        offset = min(offset +
                                     getScreenBounds().width,getScreenBounds().width * 6)
                    } label: {
                        Text("Next")
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top,20)
                .padding(.horizontal,28)
            }
                .padding(.top,20)
                .padding(.bottom,5)
            ,alignment: .bottom
        )
    }
    
    // Changing BG Color based on offset...
    func getIndex()->Int{
        let progress = (offset / getScreenBounds().width).rounded()
        
        return Int(progress)
    }
    
    // Rotation for the Animation
    func getRotation()->Double{
        
        let progress = offset / (getScreenBounds().width * 4)
        
        let rotation = Double(progress) * 360
        
        return rotation
    }
}

struct StoryView3_Previews: PreviewProvider {
    static var previews: some View {
        StoryView3( level: 6)
    }
}

//extension View{
//    func getScreenBounds()->CGRect{
//        return UIScreen.main.bounds
//    }
//}

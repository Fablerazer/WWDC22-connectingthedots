//
//  StoryView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 23/04/22.
//

import Foundation
import SwiftUI

struct StoryView: View {
    @State var offset: CGFloat = 0
    var body: some View {
        
        // Custom View
        OffsetPageTabView(offset: $offset) {
            
            HStack(spacing: 0){
                
                ForEach(storyScreens){screen in
                    VStack(spacing: 15){
                        Text(screen.title)
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                        
                        Image(screen.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getScreenBounds().width - 100*2, height: getScreenBounds().width - 100*2)
                            // small screen adoption...
                            .scaleEffect(getScreenBounds().height < 750 ? 0.9 : 1)
                            .offset(y: getScreenBounds().height < 750 ? -100 : +20)
                        
                        VStack(alignment: .leading, spacing: 12){
                        
                            Text(screen.description)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding(.top,20)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
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
                .rotationEffect(.init(degrees: 20))
                .rotationEffect(.init(degrees: getRotation()))
                .offset(y: -getScreenBounds().width - 140)
            
            ,alignment: .leading
        )
        .background(
            Color("screen\(getIndex() + 1)")
                .animation(.easeInOut, value: getIndex())
        )
        
        
        // Ignoring SafeArea for Animation
        .ignoresSafeArea(.container, edges: .all)
        .overlay(
            
            VStack{
                
                // Bottom Content...
                HStack(spacing: 25){
                    
                    // Game1 Button...
                    Button{
                        
                    } label: {
                        Text("Game 1")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.vertical,20)
                            .frame(maxWidth: .infinity)
                            .background(Color.white,in:
                                RoundedRectangle(cornerRadius: 12))
                    
                    }
                    
                    // Game2 Button...
                    Button{
                    
                    } label: {
                        Text("Game 2")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .offset(x: -5)
                            .padding(.vertical,20)
                            .frame(maxWidth: .infinity)
                            .background(Color.white,in:
                                RoundedRectangle(cornerRadius: 12))
                    }
                        
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                
                HStack{
                    
                    // Skip Button...
                    Button{
                        
                    } label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                    
                    // Indicators...
                    HStack(spacing: 8){
                        ForEach(storyScreens.indices,id: \.self){index in
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
                        // max 4 screens(3*width)...
                        offset = min(offset +
                                     getScreenBounds().width,getScreenBounds().width * 3)
                    } label: {
                        Text("Next")
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top,30)
                .padding(.horizontal,28)
            }
            .padding(.top,20)
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

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

extension View{
    func getScreenBounds()->CGRect{
        return UIScreen.main.bounds
    }
}

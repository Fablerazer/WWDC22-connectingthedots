//
//  ConnectDotView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 22/04/22.


// Connecting the dot

import Foundation
import SwiftUI

struct Line {
    
    var points: [CGPoint]
    var color: Color
    var lineWidth: CGFloat
}

struct ConnectingLine: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var appState: AppState
    let level:Int
    
    @State private var lines = [Line]()
    @State private var selectedColor: Color = .black
    @State private var selectedLineWidth: CGFloat = 1
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Touch and drag to draw a line")
                    .font(.title)
            }
            Spacer()
            
            Canvas { context, size in
                
                for line in lines {
                    
                    var path = Path()
                    path.addLines(line.points)
                    
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
            }
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onChanged({ value in
                let newPoint = value.location
                
                if value.translation.width + value.translation.height == 0 {
                    lines.append(Line(points: [newPoint], color: Color.orange, lineWidth: 5))
                }else{
                    let index = lines.count - 1
                    lines[index].points.append(newPoint)
                }
            }))
            ZStack(){
                // Game1 Button...
                NavigationLink(destination: StoryView2(level: 4), label:{
                    Text("Next Page")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .padding(.vertical, 20)
                        .frame(width: 215)
                        .background(Color.white,in:
                                        RoundedRectangle(cornerRadius: 12))
                    
                })
            }
            .offset(y:-200)
        }
        .overlay(
            Button(action:{ lines = [Line]() }){
                Text("Reset")
                    .font(.title)
            }
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 50))
            ,alignment: .topTrailing
        )
        
        
        
    }
}

struct ConnectingLine_Previews: PreviewProvider {
    static var previews: some View {
        ConnectingLine(level: 3)
    }
}

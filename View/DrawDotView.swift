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
    
    @State var showNavigation: Bool = false
    @State var showReading: Bool = true
    
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
                if showNavigation == false {
                    
                    Button("Done Drawing?"){
                        showNavigation.toggle()
                        showReading.toggle()
                    }
                    .font(.title2.bold())
                    .padding()
                }
                
                if showNavigation == true {
                    
                    NavigationLink(destination: StoryView2(level: 4)) {
                        Text("Next Page")
                            .font(.title2.bold())
                            .foregroundColor(.white)
                            .padding(.vertical, 20)
                            .frame(width: 200)
                            .background(Color.black,in:
                                            RoundedRectangle(cornerRadius: 12))
                    }
                    .padding(.top, 35)
                }
            }
            .offset(y:-100)
        }
        .overlay(
            Button(action:{ lines = [Line]() }){
                Text("Reset Drawing")
                    .font(.title)
                    .foregroundColor(.red)
            }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 0))
            ,alignment: .bottom
        )
        
        
        
    }
}

struct ConnectingLine_Previews: PreviewProvider {
    static var previews: some View {
        ConnectingLine(level: 3)
    }
}

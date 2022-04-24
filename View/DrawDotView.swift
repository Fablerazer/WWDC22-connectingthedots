//
//  ConnectDotView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 22/04/22.
//  Best build & run on Ipad Pro 11 inch

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
    @State private var colorSwitcher : Bool = true
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Touch and drag to draw a line")
                    .font(.title)
            }
            Spacer()
            
            Canvas { context, size in
                
                let radius = size.width * 0.065
                
                // OrangeCircle
                //orange1
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.1 * (size.width - radius), y:0.5 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.orange), lineWidth: 8)
                
                //orange2
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.3 * (size.width - radius), y:0.8 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.orange), lineWidth: 8)
                
                //orange3
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.45 * (size.width - radius), y:0.1 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.orange), lineWidth: 8)
                
                //orange4
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.7 * (size.width - radius), y:0.4 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.orange), lineWidth: 8)
                
                // BlueCircle
                //orange1
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.2 * (size.width - radius), y:0.2 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.blue), lineWidth: 8)
                
                //orange2
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.65 * (size.width - radius), y:0.8 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.blue), lineWidth: 8)
                
                //orange3
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.9 * (size.width - radius), y:0.5 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.blue), lineWidth: 8)
                
                //orange4
                context.stroke(Circle().path(in: CGRect(origin: CGPoint(x: 0.75 * (size.width - radius), y:0.04 * (size.height - radius)), size: CGSize(width: radius, height: radius))), with: .color(.blue), lineWidth: 8)
                
                
                for line in lines {
                    
                    var path = Path()
                    path.addLines(line.points)
                    
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
            }
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onChanged({ value in
                let newPoint = value.location
                
                if colorSwitcher == true {
                    if value.translation.width + value.translation.height == 0 {
                        lines.append(Line(points: [newPoint], color: Color(.orange), lineWidth: 5))
                    }else{
                        let index = lines.count - 1
                        lines[index].points.append(newPoint)
                    }
                }else{
                    if value.translation.width + value.translation.height == 0 {
                        lines.append(Line(points: [newPoint], color: Color(.blue), lineWidth: 5))
                    }else{
                        let index = lines.count - 1
                        lines[index].points.append(newPoint)
                    }
                }
                
//                if value.translation.width + value.translation.height == 0 {
//                    lines.append(Line(points: [newPoint], color: Color(.orange), lineWidth: 5))
//                }else{
//                    let index = lines.count - 1
//                    lines[index].points.append(newPoint)
//                }
            }))
            VStack(){
                
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
                }
            }
            .offset(y:-100)
        }
        .background(
            
            RoundedRectangle(cornerRadius: 50)
                .fill(.black)
            // Size as image size...
                .frame(width: getScreenBounds().width - 100,height:
                        getScreenBounds().width - 100)
                .scaleEffect(2)
                .rotationEffect(.init(degrees: 33))
                .offset(x: getScreenBounds().width - 0, y: -getScreenBounds().width - 220)
            
            ,alignment: .leading
        )
        .overlay(
            HStack{
                Button(action:{ lines = [Line]() }){
                    Text("Reset Drawing")
                        .font(.title2)
                        .foregroundColor(.red)
                    
                    Button("Change Color"){
                        colorSwitcher.toggle()
                    }
                    .font(.title2.bold())
                    .foregroundColor(.blue)

 
//                    .background(Color.white,in:
//                                    RoundedRectangle(cornerRadius: 12))
                    .padding()


            }
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

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
//    @State var lineStart = CGPoint.zero
//    @State var lineEnd = CGPoint.zero
    @State private var lines = [Line]()
    @State private var selectedColor: Color = .black
    @State private var selectedLineWidth: CGFloat = 1
    
//    var lineDrawingGesture: some Gesture {
//        DragGesture()
//            .onChanged { value in
//                lineStart = value.startLocation
//                lineEnd = value.location
//            }
//            .onEnded { value in
//                lineEnd = value.location
//            }
//    }
    
    var body: some View {
        VStack {
            Text("Touch and drag to draw a line")
            Spacer()
            
            Canvas { context, size in
            
                for line in lines {
                
                var path = Path()
                path.addLines(line.points)
                
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
            
//            Path { path in
//                path.move(to: lineStart)
//                path.addLine(to: lineEnd)
//            }
//            .stroke(Color.green, lineWidth: 8.0)
//            .contentShape(Rectangle())
//            .gesture(lineDrawingGesture)
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
        }
        .navigationTitle("Line Drawing")
        .toolbar {
            Button("Reset") {
//                lineStart = .zero
//                lineEnd = .zero
            }
        }
    }
}

struct ConnectingLine_Previews: PreviewProvider {
    static var previews: some View {
        ConnectingLine()
    }
}

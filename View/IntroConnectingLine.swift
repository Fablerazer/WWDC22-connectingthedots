//
//  ConnectDotView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 22/04/22.


// Connecting the dot

import Foundation
import SwiftUI

struct Line1 {
    
    var points: [CGPoint]
    var color: Color
    var lineWidth: CGFloat
    }

struct IntroConnectingLine: View {
    @State var lineStart = CGPoint.zero
    @State var lineEnd = CGPoint.zero
    var lineDrawingGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                lineStart = value.startLocation
                lineEnd = value.location
            }
            .onEnded { value in
                lineEnd = value.location
            }
    }
    
    var body: some View {
        VStack {
            Text("Connecting The Dots")
                .font(.largeTitle.bold())
                .underline(true, color: .orange)
                .foregroundColor(.black)
                .padding(.top,180)
            
            Path { path in
                path.move(to: lineStart)
                path.addLine(to: lineEnd)
            }
            .stroke(Color.orange, lineWidth: 8.0)
            .contentShape(Rectangle())
            .gesture(lineDrawingGesture)
        }
        .navigationTitle("Line Drawing")
        .toolbar {
            Button("Reset") {
                lineStart = .zero
                lineEnd = .zero
            }
        }
    }
}

struct IntroConnectingLine_Previews: PreviewProvider {
    static var previews: some View {
        IntroConnectingLine()
    }
}

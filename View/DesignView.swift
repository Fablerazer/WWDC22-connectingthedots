//
//  File.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 22/04/22.


//  For Creating Shape like oval and square

import Foundation
import SwiftUI

struct DesignView: View {
    @State private var offset = CGSize.zero
    @State private var color1 : Color = Color.primary
    @State private var color2 : Color = Color.primary
    @State private var sizeIndex = 0
    
    //    let data = [["Font","Shape"],
    //                ["Size"]]
    
    private var sizes: [CGSize] = [
        CGSize(width: 150, height: 80),
        CGSize(width: 200, height: 60),
        CGSize(width: 50, height: 70),
        CGSize(width: 220, height: 100),
        CGSize(width: 90, height: 90),
        CGSize(width: 90/2, height: 90/2),
        CGSize(width: 90/4, height: 90/4),
        CGSize(width: 150, height: 40/2),
        CGSize(width: 40/2, height: 60),
    ]
    
    var tapGesture1: some Gesture {
        TapGesture()
            .onEnded {
                withAnimation {
                    color1 = Color.random()
                }
            }
    }
    
    var tapGesture2: some Gesture {
        TapGesture()
            .onEnded {
                withAnimation {
                    color2 = Color.random()
                }
            }
    }
    
    var tapGesture3: some Gesture {
        TapGesture()
            .onEnded {
                withAnimation {
                    sizeIndex += 1
                    if sizeIndex == sizes.count {
                        sizeIndex = 0
                    }
                }
            }
    }
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                offset = CGSize(width: value.startLocation.x + value.translation.width - 50,
                                height: value.startLocation.y + value.translation.height - 50)
            }
    }
    
    var body: some View {
        VStack {
            Text("Create your own design!")
                .font(.title)
                .padding(.top)
            Text("1. Use one finger to drag the shape around\n2. Tap the button to randomly change it's colors(purple & yellow) and size <-> shape(red)")
                .font(.callout)
                .padding(10)
            Spacer()
            
            Text("Apple")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(color1)
                .padding(10)
            
            
            // Shape
            Capsule()
                .inset(by: 10)
                .stroke(color2, lineWidth: 5)
                .frame(width: sizes[sizeIndex].width, height: sizes[sizeIndex].height)
                .offset(offset)
                .gesture(dragGesture)
            Spacer()
            
            // Modifier
            HStack {
                Text("Color: ")
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.yellow)
                    .frame(width: 125/2, height: 65/2)
                    .gesture(tapGesture1)
                
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.purple)
                    .frame(width: 125/2, height: 65/2)
                    .gesture(tapGesture2)
            }
            
            HStack{
                Text("Shape: ")
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.red)
                    .frame(width: 125/2, height: 65/2)
                    .gesture(tapGesture3)
            }
            Spacer()
                .frame(height: 20)
            
        }
        .toolbar {
            Button("Reset") {
                color1 = Color.primary
                color2 = Color.primary
                offset = .zero
                sizeIndex = 0
            }
        }
        
    }
}

struct DesignView_Previews: PreviewProvider {
    static var previews: some View {
        DesignView()
    }
}

extension Color {
    static func random() -> Color {
        return Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1))
    }
}

//extension Shape {
//    static func random() -> Shape {
//        return Shape(width: Double.random(in: 0...200), height: Double.random(in: 0...200))
//    }
//}

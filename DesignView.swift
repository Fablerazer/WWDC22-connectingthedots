//
//  File.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 22/04/22.


//  For Creating Shape like oval and square

import Foundation
import SwiftUI

struct DragView: View {
    @State private var offset = CGSize.zero
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                offset = CGSize(width: value.startLocation.x + value.translation.width - 50,
                                height: value.startLocation.y + value.translation.height - 50)
            }
    }

    var body: some View {
        VStack {
            Text("Use one finger to drag the circle around")
            Spacer()
            Circle()
                .foregroundColor(.teal)
                .frame(width: 100, height: 100)
                .offset(offset)
                .gesture(dragGesture)
            Spacer()
        }
        .navigationTitle("Drag")
        .toolbar {
            Button("Reset") {
                offset = .zero
            }
        }
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}

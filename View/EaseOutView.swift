//
//  EaseOutStoryImplementationView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 21/04/22.
//

import Foundation
import SwiftUI

struct EaseOutView: View {
    @State var show = false
    
    var body: some View {
        
        VStack {
            Text("Learning SwiftUI")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(4)
            
            Image("MainCharacter")
                .frame(width: show ? 414 : 300, height: show ? 600 : 300)
                .clipped()
                .cornerRadius(show ? 0 : 30)
                .shadow(radius: 30)
//                .blur(radius: show ? 0 : 30)
                .animation(Animation.spring(), value: show)
                .aspectRatio(contentMode: .fill)
            
            Text("A course focused on UI")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .padding(4)
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("Animate")
            }
        }
    }
}

struct EaseOutView_Previews: PreviewProvider {
    static var previews: some View {
        EaseOutView()
    }
}

//
//  DesignView.swift
//  WWDC2022 FaizalH
//
//  Created by Faizal Hudya Rizfianto on 21/04/22.


//  For Change Shape button

import Foundation
import SwiftUI

struct ReDesignView: View {
  @State private var userIsInTheMiddleOfTyping = false
  @State private var display = "0"

    let data = [["AC","±", "%", "÷"],
                ["7", "8", "9","×"],
                ["4", "5", "6","-"],
                ["1", "2", "3", "+"],
                ["0", ".", "="]]

    var body: some View {
      let margin: CGFloat = 10
      return VStack(alignment: .center) {
        HStack {
          Spacer()
          
          Button(action: {}){
              Text(display)
                .foregroundColor(Color(red: 231 / 255.0, green: 76 / 255.0, blue: 60 / 255.0))
                .font(.largeTitle)
                .frame(height: 120)
          }.padding(.all)
          }
          .padding(margin)
        
        VStack(alignment: .center, spacing: margin) {
          ForEach(data, id: \.description) { items in
            HStack(alignment: .center, spacing: margin) {
              ForEach(items, id: \.description) { item in
              Button(action: {}){
                Text(item)
                  .font(.title)
                  .bold()
                  .foregroundColor(Color.blue)
                  .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                  .background(Color(red: 234 / 255.0, green: 240 / 255.0, blue: 241 / 255.0))
                  .onTapGesture {
                    self.touchAction(item)
                }
      
                  }
              }
            }
          }
          }
          .padding(EdgeInsets(top: 0, leading: margin, bottom: 0, trailing: margin))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }

    private func touchAction(_ symbol: String) {
      if Int(symbol) != nil || symbol == "." {
        touchDigit(symbol)
      } else {
        performOperation(symbol)
      }
      
    }

    private func touchDigit(_ digit: String) {
      print(#function)
      if userIsInTheMiddleOfTyping {
        display += digit
      } else {
        display = digit
        userIsInTheMiddleOfTyping = true
      }
    }
    
    private func performOperation(_ symbol: String) {
      print(#function)
//      if userIsInTheMiddleOfTyping {
//        brain.setOperand(Double(display)!)
//        userIsInTheMiddleOfTyping = false
//      }
//
//      brain.performOperation(symbol)
//
//      if let result = brain.result {
//        display = String(result)
//      }
    }
}

struct ReDesignView_Previews: PreviewProvider {
    static var previews: some View {
        ReDesignView()
    }
}

//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Roma on 6.10.22.
//

import SwiftUI

struct ButtonView: View {
    
//    @State private var opacityRed: Double = 0.0
//    @State private var opacityYellow: Double = 0.0
//    @State private var opacityGreen: Double = 0.0
    
//    @State var opacityRed = 0.001
//    @State var opacityYellow = 0.001
//    @State var opacityGreen = 0.001
    

    var body: some View {
        VStack {
            Button(action: {
                changeOpacity()
                           }, label: {
                               if opacityRed == 1.0 || opacityYellow == 1.0 || opacityGreen == 1.0 {
                                   Text ("NEXT")
                               } else {
                                   Text("Start")
                               }
                           })
            .frame(width: 140, height: 50)
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                                .background(Color.blue).cornerRadius(15)
        }
    }
    
//    private func changeOpacity() {
//            if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
//                opacityRed = 1.0
//            } else if opacityRed == 1.0 {
//                opacityRed = 0.001
//                opacityYellow = 1.0
//            } else if opacityYellow == 1.0 {
//                opacityYellow = 0.001
//                opacityGreen = 1.0
//            } else if opacityGreen == 1.0 {
//                opacityGreen = 0.001
//                opacityRed = 1.0
//            }
//        }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

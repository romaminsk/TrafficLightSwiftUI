//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Roma on 5.10.22.
//

import SwiftUI

struct ContentView: View {

    @State private var opacityRed = 0.001
    @State private var opacityYellow = 0.001
    @State private var opacityGreen = 0.001

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                CircleView().redCircle.foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: opacityRed))
                CircleView().yellowCircle.foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: opacityYellow))
                CircleView().greenCircle.foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: opacityGreen))
                Spacer()

                Button(action: {
                    changeOpacity()
                }, label: {
                        if opacityRed == 1.0 || opacityYellow == 1.0 || opacityGreen == 1.0 {
                            Text ("NEXT")
                        } else {
                            Text("START")
                        }
                    })
                    .frame(width: 140, height: 50)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                    .background(Color.blue).cornerRadius(15)
            }
                .padding(.top, 100)
                .padding(.bottom, 50)
        }
    }

    private func changeOpacity() {
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
        } else if opacityRed == 1.0 {
            opacityRed = 0.001
            opacityYellow = 1.0
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.001
            opacityGreen = 1.0
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.001
            opacityRed = 1.0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

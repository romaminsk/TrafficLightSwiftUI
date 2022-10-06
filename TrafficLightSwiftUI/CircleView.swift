//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Roma on 6.10.22.
//

import SwiftUI

struct CircleView: View {


    var redCircle: some View {
        setCircleColor()
    }

    var yellowCircle: some View {
        setCircleColor()
    }

    var greenCircle: some View {
        setCircleColor()
    }

    var body: some View {
        VStack {
            redCircle
            yellowCircle
            greenCircle
        }
    }

    private func setCircleColor() -> some View {
        Circle()
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(color: .black, radius: 10)
            .frame(width: 100, height: 100)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}


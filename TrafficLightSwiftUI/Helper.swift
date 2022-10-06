//
//  Helper.swift
//  TrafficLightSwiftUI
//
//  Created by Roma on 6.10.22.
//

import Foundation


public func changeOpacity() {
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

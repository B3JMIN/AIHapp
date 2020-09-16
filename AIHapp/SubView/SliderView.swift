//
//  SliderView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-14.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @State private var sliderValue: Double = 0
    var minimumValue = 0.0
    var maximumValue = 100.0
    
    var body: some View {
        VStack {
            HStack {
//                Text("\(Double(minimumValue))")
                Text("Threshold: ")
                Text(String(format: " %.2f", minimumValue))
                Slider(value: $sliderValue, in: minimumValue...maximumValue)
                Text(String(format: " %.2f", maximumValue))
            }.padding()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

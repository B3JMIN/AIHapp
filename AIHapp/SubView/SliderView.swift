//
//  SliderView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-14.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State private var celius: Double = 0
    var body: some View {
        VStack {
            Slider(value:$celius, in: -100...100, step:0.1)
            Text("\(celius) Celius is \(celius) 10 Celius")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

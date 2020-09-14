//
//  TypicalButton.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-14.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

//struct TypicalButton: View {
//    @State var content:String
//
//    var body: some View {
//        Button(action: {
//
//        })
//            {
//            Text(content)
//        }
//    }
//}
//

// This is a reusable button styling that can be used in multiply buttons 
struct UniversalButton: ButtonStyle {
    var bgColor:Color
    
    func makeBody(configuration:Self.Configuration) -> some View {
        configuration.label
        .padding(20)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
                    .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                    .blendMode(.overlay)
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(bgColor)
            }

        )
    }
}

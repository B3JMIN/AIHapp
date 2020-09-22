//
//  TypicalButton.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-14.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI
//
//
struct UniversalButtonStyle: ButtonStyle {
//   set for iPhone and iPad
    var width:CGFloat {
        if UIDevice.current.userInterfaceIdiom == .phone{
            return UIScreen.main.bounds.width * 0.9
        } else {
            return UIScreen.main.bounds.width * 0.4
        }
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth:0, maxWidth:.infinity)
            .padding()
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
                        .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.blue)
                }
        )
            .scaleEffect(configuration.isPressed ? 0.95: 1)
            .foregroundColor(.primary)
            .animation(.spring())
            .padding(.horizontal,30)
    }
}

//
//  SmallPortrait.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-09.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SmallPortrait: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var portrait: String
    var body: some View {
        Image(portrait)
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:100, height: 100)
            .onTapGesture {
                self.viewRouter.currentPage = "PersonDetail"
        }
    }
}

struct SmallPortrait_Previews: PreviewProvider {
    static var previews: some View {
        SmallPortrait(portrait: "turtlerock").environmentObject(ViewRouter())
    }
}

//
//  SmallPortrait.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-17.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SmallPortrait: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var ImageName: String
    var body: some View {
        Image(ImageName)
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
        SmallPortrait(ImageName: "turtlerock").environmentObject(ViewRouter())
    }
}

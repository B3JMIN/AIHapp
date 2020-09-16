//
//  TargetImage.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-16.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct TargetImage: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var ImageName: String
    var body: some View {
        Image(ImageName)
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:100, height: 100)
            .onTapGesture {
                self.viewRouter.currentPage = "CameraResult"
        }
    }
}

struct TargetImage_Previews: PreviewProvider {
    static var previews: some View {
        TargetImage(ImageName: "turtlerock").environmentObject(ViewRouter())
    }
}

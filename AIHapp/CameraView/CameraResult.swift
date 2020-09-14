//
//  CameraResult.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-10.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct CameraResult: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                Spacer()
                Text("Select Group")
                    .foregroundColor(.blue)
                .bold()
                .padding()
            }
            Image("blankImage")
            HStack {
                SmallPortrait(portrait: "turtlerock")
                SimilarityBar(similarity: 0.5722)
            }
            .padding(5)
            HStack {
                SmallPortrait(portrait: "chincoteague")
                SimilarityBar(similarity: 0.3434)
            }
            Button(action: {
                self.viewRouter.currentPage = "HistoryDateSelector"
                }) {
            Text("History Search")
            }.buttonStyle(UniversalButtonStyle())
            // do some styling for the button
        }
    }
}

struct CameraResult_Previews: PreviewProvider {
    static var previews: some View {
        CameraResult().environmentObject(ViewRouter())
    }
}

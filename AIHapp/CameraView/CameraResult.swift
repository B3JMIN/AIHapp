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
            }
            Image("blankImage")
            GeometryReader { geometry in
                HStack {
                    TargetImage(ImageName: "chincoteague")
                        .frame(width:geometry.size.width/2, height:geometry.size.height/2)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/2, height:geometry.size.height/2)
                }.padding(.horizontal, 5)
                
            }.padding(.horizontal, 20)
            GeometryReader { geometry in
                HStack{
                    TargetImage(ImageName:"chincoteague")
                        .frame(width:geometry.size.width/2, height:geometry.size.height/2)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/2, height: geometry.size.height/2)
                }.padding(.vertical, 5)
            }.padding(.horizontal, 20)
            Button(action: {
                self.viewRouter.currentPage = "HistoryDateSelector"
            }) {
                Text("Search History")
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

//
//  photoResult.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-16.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct PhotoResult: View {
    @EnvironmentObject var viewRouter:ViewRouter
    
    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    self.viewRouter.currentPage = "CameraView"
                }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                }
                Spacer()
                Button(action: {
                    self.viewRouter.currentPage = "SeearchSetting"
                }){
                Text("Select Group")
                    .foregroundColor(.blue)
                .bold()
                    .padding(.horizontal, 10)
                }
            }
            Spacer()
            Image("blankImage")
            Spacer()
            Button(action: {
                self.viewRouter.currentPage = "CameraResult"
            }){
                Text("Search")
            }.buttonStyle(UniversalButtonStyle())
        }
    }
}

struct PhotoResult_Previews: PreviewProvider {
    static var previews: some View {
        PhotoResult().environmentObject(ViewRouter())
    }
}

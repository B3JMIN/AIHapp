//
//  ContentView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-02.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct CameraView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    @State private var useCamera: Bool = false
    
    var body: some View{
        VStack{
                HStack {
                    Button(action: {
                        self.viewRouter.currentPage = "HomePage"
                    }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                        .padding()
                    }
                    Spacer()
                    Button(action: {
                        self.viewRouter.currentPage = "SearchSettingPage"
                    }){
                    Text("Select Group")
                        .foregroundColor(.blue)
                    .bold()
                    .padding()
                    }
                }
            image?.resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
            VStack {
                Spacer()
                HStack {
                    Button("Album"){
                        self.showImagePicker = true
                        self.useCamera = false
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    Spacer()
                    Button(action: {
                        self.showImagePicker = true
                        self.useCamera = true
                    }){
                        HStack {
                            Text("Take Picture").font(.title)
                        }
                    }
                }
                if image != nil {
                    Button(action: {
                        self.viewRouter.currentPage = "CameraResult"
                    }) {
                    Text("Search")
                    }.buttonStyle(UniversalButtonStyle())
                }
                
                }
        }.sheet(isPresented: self.$showImagePicker){
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image:self.$image, useCamera: self.$useCamera)
        }.navigationBarTitle(Text("Back"), displayMode: .inline)
    }


struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        CameraView().environmentObject(ViewRouter())
    }
}
}

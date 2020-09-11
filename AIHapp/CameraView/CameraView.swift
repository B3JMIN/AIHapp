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
    
    let cameraController = CameraController()
    
    var body: some View{
        ZStack{
            VStack {
                HStack {
                    Button(action: {
                        // todo
                    }) {
                        Text("Back")
                    }
                    .foregroundColor(Color.white)
                    .padding(.all)
                    Button(action: {
                        // search in group
                    }) {
                        Text("Search Group")
                    }
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
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
                    Button("Take Photo"){
                        self.showImagePicker = true
                        self.useCamera = true
                    }.padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                Button(action: {
                    self.viewRouter.currentPage = "CameraResult"
                    print("viewRouter is now \(self.viewRouter.currentPage)")
                }) {
                Text("Search")
                    .padding(.bottom)
                }
                }
        }.sheet(isPresented: self.$showImagePicker){
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image:self.$image, useCamera: self.$useCamera)
//            Button(action: {self.viewRouter.currentPage = "CameraResult"}) {
//                Text("Search")
//            }
        }.navigationBarTitle(Text("Back"), displayMode: .inline)
    }


struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        CameraView().environmentObject(ViewRouter())
    }
}
}

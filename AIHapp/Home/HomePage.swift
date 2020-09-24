//
//  HomePage.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-11.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    @State var showMenu:Bool = false
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
        }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        SideMenu()
                            .frame(width: geometry.size.width/1.5)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().environmentObject(ViewRouter())
    }
}


struct MainView: View {
    
    @EnvironmentObject var viewRouter:ViewRouter
    
    @Binding var showMenu: Bool
    @State private var showImagePicker: Bool = false
    @State private var useCamera:Bool = false
    @State private var image:Image?=nil
    
    var body: some View {
        VStack {
            Spacer()
            Image("AIH-logo")
                .resizable()
                .scaledToFit()
                .frame(width:200,height:200)
                .padding(5)
            Spacer()
            //            image?.resizable()
            //            .aspectRatio(contentMode: .fit)
            //            .scaledToFit()
            HStack {
                Spacer()
                Button(action: {
                    //                    self.viewRouter.currentPage = "CameraView"
                    self.showImagePicker = true
                    self.useCamera = true
                }) {
                    Image(systemName:"camera.fill")
                        .font(.system(size:60))
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                Button(action: {
                    self.showImagePicker = true
                    self.useCamera = false
                }){
                    Image(systemName: "photo.fill")
                        .font(.system(size:60))
                        .aspectRatio(contentMode:.fit)
                }
                Spacer()
            }
            Spacer()
        }.sheet(isPresented: self.$showImagePicker){
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image, useCamera: self.$useCamera)
        }.navigationBarTitle(Text("Back"), displayMode: .inline)
    }
}





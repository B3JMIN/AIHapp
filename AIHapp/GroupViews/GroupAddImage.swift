//
//  GroupAdd.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-15.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct GroupAddImage: View {
    
    @EnvironmentObject var viewRouter:ViewRouter
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    @Binding var useCamera: Bool
    @State var phase = 0
    @State var showActionSheet:Bool = false
    
    var body: some View {
        VStack {
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
                Text("New Group")
                    .bold()
                    .padding(.trailing, 50)
                Spacer()
            }
            GeometryReader { geometry in
                HStack {
                    Button (action: {
                        self.showActionSheet.toggle()
                    }) {
                        ZStack{
                            Image(systemName: "plus")
                                .padding(20)
                                .font(.system(size: 60))
                                .foregroundColor(.blue)
                            Rectangle()
                                .strokeBorder(style:StrokeStyle(lineWidth: 4, dash : [10], dashPhase: 0))
                                .foregroundColor(.blue)
                                .frame(width: 100, height: 100)
                                .onAppear{self.phase -= 20}
                                .animation(Animation.linear.repeatForever(autoreverses: false))
                        }
                        .frame(width:geometry.size.width/3)
                    }
                    Image("blankImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:100, height: 100)
                        .frame(width:geometry.size.width/3)
                    Image("blankImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:100, height: 100)
                        .frame(width:geometry.size.width/3)
                }
                Spacer()
            }.padding(.horizontal, 5)
            Spacer()
        }
        .actionSheet(isPresented: $showActionSheet, content: {() -> ActionSheet in
            ActionSheet(title: Text("Select Camera or Album"), message: Text("choose a good-looking picture"), buttons: [
                .default(
                    Text("Camera"),
                    action: {
                        //                        self.showImagePicker = true
                        //                        self.useCamera = true
                        self.viewRouter.currentPage = "ImageAddPage"
                }),
                .default(
                    Text("Album"),
                    action: {
                        self.viewRouter.currentPage = "GroupStructView" 
                }),
                .cancel()
            ])
        })
    }
}

struct GroupAddImage_Previews: PreviewProvider {
    static var previews: some View {
        GroupAddImage(showImagePicker: .constant(false), image: .constant(Image("")), useCamera: .constant(false)).environmentObject(ViewRouter())
    }
}


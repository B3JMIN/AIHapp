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
                Spacer()
            }
            Image(systemName: "plus").imageScale(.large)
                .onTapGesture {
                    self.showActionSheet.toggle()
                }
            .frame(alignment:.topLeading)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.blue, lineWidth: 4)
            )
            Spacer()
        }
    .actionSheet(isPresented: $showActionSheet, content: {() -> ActionSheet in
        ActionSheet(title: Text("Select Camera or Album"), message: Text("choose a good-looking picture"), buttons: [
                .default(
                    Text("Camera"),
                    action: {
//                        self.viewRouter.currentPage = "HomePage"
                        self.showImagePicker = true
                        self.useCamera = true
                }),
                .default(
                    Text("Album"),
                    action: {
//                        self.viewRouter.currentPage = "HomePage"
                        self.showImagePicker = true
                        self.useCamera = false
                }),
                .cancel()
        ])
    })
//        if isShown {
//            ImagePicker()
//        }
    }
}

struct GroupAddImage_Previews: PreviewProvider {
    static var previews: some View {
        GroupAddImage(showImagePicker: .constant(false), image: .constant(Image("")), useCamera: .constant(false)).environmentObject(ViewRouter())
    }
}


//showImagePicker: .constant(false), image: .constant(Image("")), useCamera: .constant(false)

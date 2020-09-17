//
//  ImageAdd.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-17.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct ImageAdd: View {
    @EnvironmentObject var viewRouter:ViewRouter
    @State var showActionSheet:Bool = false
    @State var showAlert:Bool = false
    @State private var phase:CGFloat = 0
    var body: some View {
        VStack {
            HStack {
                Button(action:{
                    self.viewRouter.currentPage = "HomePage"
                }){
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                        .padding()
                        .padding(.trailing, 55)
                }
                Spacer()
                Text("New_Group")
                    .font(.largeTitle)
                    .bold()
                    .frame(alignment: .center)
                Spacer()
                Button(action: {
                    self.viewRouter.currentPage = "PersonDeletePage"
                }){
                    Text("More")
                        .foregroundColor(.blue)
                        .bold()
                        .padding()
                }
            }
            HStack {
                Button( action: {
                    // action for adding new picture
                    self.viewRouter.currentPage = "ImageDetail"
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
                }
                Image("turtlerock")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100, height: 100)
                Image("blankImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100, height: 100)
            }
            .padding(.horizontal, 5)
            HStack {
                Image("icybay")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100, height: 100)
                Image("chilkoottrail")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100, height: 100)
                Image("rainbowlake")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100, height: 100)
            }
            Spacer()
        }
        .actionSheet(isPresented: $showActionSheet, content: {() -> ActionSheet in
            ActionSheet(title: Text(""), buttons: [
                .default(
                    Text("Delete Person"),
                    action: {
                        // trigger to a new page
                        self.viewRouter.currentPage = "PersonDeletePage"
                }),
                .default(
                    Text("Delete Group"),
                    action: {
                        self.showAlert = true
                }),
                .cancel()
            ])
        })
            .alert( isPresented: $showAlert){
                Alert(
                    title: Text("Delete Group"),
                    message: Text("Deleted Group can't be recovered. Are you sure you want to delete this group?"),
                    primaryButton: .destructive(Text("Yes"), action: {
                        // some action for yes button
                    }),
                    secondaryButton: .cancel(Text("No"), action: {
                        // some actions for no button
                    })
                )
        }
    }
}

struct ImageAdd_Previews: PreviewProvider {
    static var previews: some View {
        ImageAdd().environmentObject(ViewRouter())
    }
}

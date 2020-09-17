//
//  PersonDelete.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-17.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct PersonDelete: View {
    @EnvironmentObject var viewRouter:ViewRouter
    @State var showDeleteAlert: Bool = false
    @State var phase = 0
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
                Spacer()
            }
            // The diff between Person delete and ImageAdd is all the image display
            // in Person delete can be selected
            HStack {
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
                CellwithButton(isSelected: false, imageName: "turtlerock")
                CellwithButton(isSelected: false, imageName: "blankImage")
            }
            HStack {
                CellwithButton(isSelected: false, imageName: "icybay")
                CellwithButton(isSelected: false, imageName: "chilkoottrail")
                CellwithButton(isSelected: false, imageName: "rainbowlake")
            }
            Spacer()
            Button( action: {
                // delete this person
                self.showDeleteAlert = true
            }) {
                Text("Delete")
            }.buttonStyle(UniversalButtonStyle())
        }
            .alert( isPresented: $showDeleteAlert){
                    Alert(
                        title: Text("Delete Person"),
                        message: Text("Are you sure you want to delete this person?"),
                        primaryButton: .destructive(Text("Yes"), action: {
                            // some action for yes button
                        }),
                        secondaryButton: .cancel(Text("No"), action: {
                            // some actions for no button
                        })
                    )
            }}
}

struct PersonDelete_Previews: PreviewProvider {
    static var previews: some View {
        PersonDelete().environmentObject(ViewRouter())
    }
}

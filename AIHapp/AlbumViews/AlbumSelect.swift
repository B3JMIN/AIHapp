//
//  AlbumSelect.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-08.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct AlbumSelect: View {
    @EnvironmentObject var viewRouter:ViewRouter
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
                }
                Spacer()
                Button(action:{
                    self.viewRouter.currentPage = "SearchSettingPage"
                }){
                    Text("Select Group")
                }
            }
            
            List {
                VStack {
                    HStack {
                        //                                  Here should use another cell for not selecting, only  for viewing
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
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        
                    }
                    
                }
            }
            Button(action:{
                self.viewRouter.currentPage = "AlbumResultPage"
            }) {
                Text("Search")
            }.buttonStyle(UniversalButtonStyle())
        }
    }
}

struct AlbumSelect_Previews: PreviewProvider {
    static var previews: some View {
        AlbumSelect().environmentObject(ViewRouter())
    }
}

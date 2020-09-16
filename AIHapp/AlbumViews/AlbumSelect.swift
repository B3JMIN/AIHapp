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
            
            //            Content
            //                GeometryReader { geometry in
            //                    HStack {
            //                        SmallPortrait(portrait:"blankImage")
            //                            .frame(width:geometry.size.width/2, height:geometry.size.height/2)
            //                        SmallPortrait(portrait:"turtlerock")
            //                            .frame(width:geometry.size.width/2,
            //                                   height:geometry.size.height/2)
            //                        SmallPortrait(portrait:"icybay")
            //                            .frame(width:geometry.size.width/2,
            //                                   height:geometry.size.height/2)
            //                    }.padding(.horizontal, 5)
            //                }.padding(.horizontal, 20)
            List {
                VStack {
                    HStack {
                        //                                  Here should use another cell for not selecting, only  for viewing
                        CellwithButton(isSelected:false,imageName:"systemName: plus")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                    }
                    HStack {
                        CellwithButton(isSelected:false,imageName:"blankImage")
                        CellwithButton(isSelected:false, imageName:"turtlerock")
                        CellwithButton(isSelected:false, imageName:"stmarylake")
                        
                    }
                    
                }
            }
            //            VStack {
            //                HStack {
            //                    Image(systemName: "plus")
            //                    Image("blankImage")
            //                    Image("turtlerock")
            //                }.padding(20)
            //                // here can use for each to layout, but i choose to handcoded
            //                HStack {
            //                    Image("icybay")
            //                    Image("lakemcdonald")
            //                    EmptyView()
            //                }.padding(20)
            //            }
            //            Button
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

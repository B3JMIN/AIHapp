//
//  AlbumResult.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-08.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct AlbumResult: View {
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
            }
            GeometryReader { geometry in
                HStack {
                    TargetImage(ImageName:"chincoteague")
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    TargetImage(ImageName:"turtlerock")
                        .frame(width:geometry.size.width/3,
                               height:geometry.size.height/3)
                }
            }.padding(.horizontal, 5)
            GeometryReader { geometry in
                HStack {
                    TargetImage(ImageName:"chincoteague")
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    TargetImage(ImageName:"turtlerock")
                        .frame(width:geometry.size.width/3,
                               height:geometry.size.height/3)
                }
            }.padding(.horizontal, 5)
            GeometryReader { geometry in
                HStack {
                    TargetImage(ImageName:"chincoteague")
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    TargetImage(ImageName:"turtlerock")
                        .frame(width:geometry.size.width/3,
                               height:geometry.size.height/3)
                }
            }.padding(.horizontal, 5)
            GeometryReader { geometry in
                HStack {
                    TargetImage(ImageName:"chincoteague")
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    TargetImage(ImageName:"turtlerock")
                        .frame(width:geometry.size.width/3,
                               height:geometry.size.height/3)
                }
            }.padding(.horizontal, 5)
            GeometryReader { geometry in
                HStack {
                    TargetImage(ImageName:"chincoteague")
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                    SimilarityBar(similarity:0.3434)
                        .frame(width:geometry.size.width/3, height:geometry.size.height/3)
                        .padding(0)
                    TargetImage(ImageName:"turtlerock")
                        .frame(width:geometry.size.width/3,
                               height:geometry.size.height/3)
                }
            }.padding(.horizontal, 5)
        }
    }
}

struct AlbumResult_Previews: PreviewProvider {
    static var previews: some View {
        AlbumResult().environmentObject(ViewRouter())
    }
}

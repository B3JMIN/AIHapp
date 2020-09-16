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
//                            HStack {
//                                SmallPortrait(portrait: "blankImage")
//                                SimilarityBar(similarity:0.3223)
//                                SmallPortrait(portrait: "turtlerock")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "twinlake")
//                                SimilarityBar(similarity: 0.8753)
//                                SmallPortrait(portrait: "silversalmoncreek")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "icybay")
//                                SimilarityBar(similarity: 0.7754)
//                                SmallPortrait(portrait: "chincoteague")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "silversalmoncreek")
//                                SimilarityBar(similarity: 0.7864)
//                                SmallPortrait(portrait: "stmarylake")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "chilkoottrail")
//                                SimilarityBar(similarity: 0.2190)
//                                SmallPortrait(portrait: "rainbowlake")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "umbagog")
//                                SimilarityBar(similarity: 0.2235)
//                                SmallPortrait(portrait: "yukon_charleyrivers")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "twinlake")
//                                SimilarityBar(similarity: 0.2847)
//                                SmallPortrait(portrait: "hiddenlake")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "silversalmoncreek")
//                                SimilarityBar(similarity: 0.4537)
//                                SmallPortrait(portrait: "icybay")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "blankImage")
//                                SimilarityBar(similarity: 0.6753)
//                                SmallPortrait(portrait: "stmarylake")
//                            }
//                            .padding(5)
//                            HStack {
//                                SmallPortrait(portrait: "turtlerock")
//                                SimilarityBar(similarity: 0.9784)
//                                SmallPortrait(portrait: "twinlake")
//                            }
//                            .padding(5)
        }
    }
}

struct AlbumResult_Previews: PreviewProvider {
    static var previews: some View {
        AlbumResult().environmentObject(ViewRouter())
    }
}

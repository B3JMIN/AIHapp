//
//  ImageDetail.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-17.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct ImageDetail: View {
    @EnvironmentObject var viewRouter:ViewRouter
    @State var isEditing: Int = 0
    
    let MetaDataDic: [String:String] = ["eyeColor":"red", "job":"Software Developer", "hobby":"Basketball", "School": "UWaterloo","Major":"Computer Engineering"]
    
    // all the possible data get from user's input:
    @State var personName:String = ""
    @State var personDescription:String = ""
    @State var userMetaData: [String:String] = ["":""]
    @State var userMetaDataKey:String = ""
    @State var userMetaDataValue:String = ""
    
    
    var body: some View {
        //        let keys = MetaDataDic.map{$0.key}
        //        let values = MetaDataDic.map{$0.value}
        return VStack {
            HStack {
                Button( action: {
                    self.isEditing = 1
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                        .padding()
                }
                Spacer()
            }
            SmallPortrait(ImageName: "blankImage")
            Spacer()
            // Text mode for Reviewing
            if isEditing == 0 || isEditing == 2 {
                VStack {
                    Text("Benjamin Cai")
                        .font(.title)
                    Text("Software developer with experience in web and iOS frontend")
                        .font(.subheadline)
                    HStack {
                        Text("MetaData")
                            .bold()
                        Spacer()
                    }
                    ForEach(MetaDataDic.sorted(by: >), id: \.key) { key, value in
                        Section() {
                            //                            Text(value)
                            ZStack {
                                HStack(alignment: .top) {
                                    Text(key)
                                    //                                        .frame(width:width,height: height,alignment: .leading)
                                    Spacer()
                                    Text(value)
                                    Spacer()
                                }.padding(.leading, 40)
                                
                            }
                            Spacer()
                        }
                    }
                }
                Spacer()
            }
            else {
                ImageDetaiEdit()
            }
            Button( action:{
                if self.isEditing == 0 {
                    self.isEditing += 1
                }else if self.isEditing == 1 {
                    self.isEditing += 1
                }else {
                    self.viewRouter.currentPage = "HomePage"
                }
            }) {
                if self.isEditing == 0 {
                    Text("Edit")
                }else if self.isEditing == 1 {
                    Text("Save")
                }else {
                    Text("Confirm")
                }
            }.buttonStyle(UniversalButtonStyle())
        }
    }
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetail().environmentObject(ViewRouter())
    }
}

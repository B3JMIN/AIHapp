//
//  ImageDetaiEdit.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-22.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct ImageDetaiEdit: View {
    @State var personName:String = ""
    @State var personDescription:String = ""
    @State var userMetaData: [String:String] = ["":""]
    @State var userMetaDataKey:String = ""
    @State var userMetaDataValue:String = ""
    
    var body: some View {
        VStack {
            TextField("Enter Person's Name", text: $personName)
                .foregroundColor(.blue)
                .font(.title)
                .padding(.horizontal,30)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Enter Person's Description", text: $personDescription)
                .foregroundColor(.blue)i
                    .font(.subheadline)
                    .padding(.horizontal,30)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            HStack {
                Text("Edit Your MetaData:")
                    .font(.title)
                    .padding(.horizontal, 30)
                Spacer()
            }
            HStack {
                TextField("eyeColor etc", text: $userMetaDataKey)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                TextField("Red etc", text: $userMetaDataValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                Button( action: {
                    self.userMetaDataValue = ""
                    self.userMetaDataKey = ""
                }) {
                    Image(systemName: "trash")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }.padding(.horizontal, 30)
            Spacer()
        }
    }
}

struct ImageDetaiEdit_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetaiEdit()
    }
}

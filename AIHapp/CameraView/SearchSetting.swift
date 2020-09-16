//
//  SearchSetting.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-16.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SearchSetting: View {
    @EnvironmentObject var viewRouter:ViewRouter
    
    @State var threshHold:Double = 1.4
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.viewRouter.currentPage = "CameraView"
                }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                }
                Spacer()
                Button(action: {
                    self.viewRouter.currentPage = "PhotoResult"
                }){
                Text("Save")
                    .foregroundColor(.blue)
                .bold()
                .padding()
                }
            }
            HStack {
                SliderView(minimumValue: threshHold, maximumValue: 3.0)
            }
            HStack {
                Text("Groups")
                    .padding(.horizontal, 10)
                Spacer()
            }
            List {
                    SelectGroup(isSelected: false, GroupName: "Group 2", GroupNumber: 41)
                    SelectGroup(isSelected: true, GroupName: "Group 41", GroupNumber: 14)
                    SelectGroup(isSelected: false, GroupName: "Group 31", GroupNumber: 23)
            }
        }
    }
}

struct SearchSetting_Previews: PreviewProvider {
    static var previews: some View {
        SearchSetting().environmentObject(ViewRouter())
    }
}


struct SelectGroup: View {
    @State var isSelected: Bool = false
    var GroupName: String
    var GroupNumber: Int
    
    var body: some View {
        HStack {
            Button (action: {
                self.isSelected.toggle()
            }){
                Image(systemName: self.isSelected ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(.blue)
            }
            Text(GroupName)
            Spacer()
            Text("\(GroupNumber)")
        }
    }
}

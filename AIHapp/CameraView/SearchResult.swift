//
//  SearchResult.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-14.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SearchResult: View {
    @EnvironmentObject var viewRouter:ViewRouter
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                Spacer()
                Text("Save")
                .foregroundColor(.blue)
                .bold()
                .padding()
            }
            SliderView(minimumValue: 0.70, maximumValue: 0.86)
            List {
                GroupCell(title: "Group 1", completed: false)
                GroupCell(title: "Group 2", completed: true)
                GroupCell(title: "Group 41", completed: false)
            }
//            Button(action: self.viewRouter.currentPage = "ManageGroup", label: "Manage Group")
    }
}
}
struct SearchResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult().environmentObject(ViewRouter())
    }
}

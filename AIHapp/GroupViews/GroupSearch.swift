//
//  GroupSearch.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-14.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct GroupSearch: View {
    @EnvironmentObject var viewRouter: ViewRouter
//    @ObservedObject var keyBoardController:
    @State var isAdding : Bool = false
    @State private var addedText = ""
    @State private var searchText = ""
      var body: some View {
          VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    self.viewRouter.currentPage = "HomePage"
                }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                }
                Spacer()
                Button(action: {
                    self.isAdding.toggle()
                }){
                Text("Add Group")
                    .foregroundColor(.blue)
                .bold()
                .padding()
                }
            }
            List {
                TextField("Type your search", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // Here can use a foreach to filter the searching text
                Form {
                    if isAdding {
                        TextField("Call a name for your group", text: $addedText)
                    }
                    Text("Cross_age")
                    Text("Hello World")
                    Text("Good morning")
                    Text("Group 41")
                }
            }
              HStack {
                Button(action: {
                    self.viewRouter.currentPage = "HomePage"
                }) {
                Text("Home")
                    .padding(.bottom)
                }

              }
            .padding()
            .accentColor(Color(UIColor.systemRed)) // (13)
          }
        }
    }


struct GroupSearch_Previews: PreviewProvider {
    static var previews: some View {
        GroupSearch().environmentObject(ViewRouter())
    }
}


struct GroupCell: View {
    var title:String
    var completed:Bool

  var body: some View {
    HStack {
      Image(systemName: completed ? "checkmark.circle.fill" : "circle")
        .resizable()
        .frame(width: 20, height: 20)
      Text(title)
    }
  }
}



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
//    var groups: [group] = TestGroup
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
                Text("Add Group")
                    .foregroundColor(.blue)
                .bold()
                .padding()
            }
            List {
                TextField("Type your search", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // Here can use a foreach to filter the searching text
                Form {
                    Text("Cross_age")
                }
                GroupCell(title: "Hello World", completed: true)
                GroupCell(title: "Good Morning", completed: false)
                GroupCell(title: "Group 414", completed: false)
//              ForEach (self.groups) { group in // (3)
//                GroupCell(group: group) // (6)
//              }
//              .onDelete { indexSet in // (4)
//                 // The rest of this function will be added later
//              }
            }
            Button(action: {}) { // (7)
              HStack {
                Image(systemName: "plus.circle.fill") //(8)
                  .resizable()
                  .frame(width: 20, height: 20) // (11)
                Text("Add Group") // (9)
                Button(action: {
                    self.viewRouter.currentPage = "HomePage"
                }) {
                Text("Home")
                    .padding(.bottom)
                }

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



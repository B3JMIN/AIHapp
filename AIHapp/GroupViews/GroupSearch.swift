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
    //    let groupNames = ["Benjamin", "Scott", "Austin", "Eric", "Aroron", "Mike", "Guangni","Ben"]
    let screenSize = UIScreen.main.bounds
    @State private var groupNames = (1...5).map{"\($0)"}
    @State private var addedText = ""
    @State private var searchText = ""
    
    @State private var searchTerm : String = ""
    
    @State private var isPresented:Bool = false
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        self.viewRouter.currentPage = "HomePage"
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                            .imageScale(.large)
                            .padding(.horizontal, 30)
                    }
                    Spacer()
                    Text("Group")
                        .font(.title)
                        .bold()
                    Spacer()
                    Button( action: {
                        self.addedText = ""
                        self.isPresented = true
                    })
                    {
                        Text("Add Group").foregroundColor(.blue)
                    }
                }
                List {
                    SearchBar(text:$searchTerm)
                    ForEach(self.groupNames.filter{
                        self.searchTerm.isEmpty ? true: $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) {name in
                        Button (action:{
                            self.viewRouter.currentPage = "GroupAddImage"
                        }){
                            Text(name)
                        }
                    }
                }
                
            }
            .padding()
            //            .accentColor(Color(UIcolor.systemRed))
            AddAlert(title: "Name your new group", isShown: $isPresented, text: $addedText, onDone: { addedText in
                self.groupNames.append(addedText)
            })
        }
    }
    
}

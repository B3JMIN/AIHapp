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
    let groupNames = ["Benjamin", "Scott", "Austin", "Eric", "Aroron", "Mike", "Guangni","Ben"]
    @State var isAdding = false
    @State private var addedText = ""
    @State private var searchText = ""
    
    @State private var searchTerm : String = ""
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
//                    self.isAdding.toggle()
                    let alertHC = UIHostingController(rootView: MyAlert())
                    
                    alertHC.preferredContentSize = CGSize(width: 300, height: 200)
                    alertHC.modalPresentationStyle = UIModalPresentationStyle.formSheet
                    
                    UIApplication.shared.windows[0].rootViewController?.present(alertHC,animated: true)
                    
                }){
                    Text("Add Group")
                        .foregroundColor(.blue)
                        .bold()
                        .padding()
                }
            }
            List {
                SearchBar(text: $searchTerm)
                ForEach(self.groupNames.filter{
                    self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                }, id: \.self) { name in
                    Text(name)
                }
            }
            
        }
        .padding()
        .accentColor(Color(UIColor.systemRed))
        .alert(isPresented: $isAdding){
            Alert(
                title: Text("Add a New Group"),
                message: Text("Make a name for your group"),
                dismissButton: .default(Text("Yes"))
            )
        }
    }
}


struct GroupSearch_Previews: PreviewProvider {
    static var previews: some View {
        GroupSearch().environmentObject(ViewRouter())
    }
}


struct MyAlert: View {
    @State private var text: String = ""

    var body: some View {

        VStack {
            Text("Enter Input").font(.headline).padding()
            TextField("Enter your GroupN Name", text:$text)
            Divider()
            HStack {
                Spacer()
                Button(action: {
                    UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
                }) {
                    Text("Done")
                }
                Spacer()

                Divider()

                Spacer()
                Button(action: {
                    UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
                }) {
                    Text("Cancel")
                }
            }.padding(0)
//                .frame(width:250, height: 200)


            }.background(Color(white: 0.9))
    }
}

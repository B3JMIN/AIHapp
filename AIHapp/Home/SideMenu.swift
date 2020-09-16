//
//  SideMenu.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-11.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SideMenu: View {
    @EnvironmentObject var viewRouter:ViewRouter
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName:"person")
                    .foregroundColor(.white)
                    .imageScale(.large)
                Button(action: {
                    self.viewRouter.currentPage = "GroupSearch"
                }) {
                Text("Group")
                    .foregroundColor(.blue)
                    .font(.title)
                }

            }
                HStack {
                    Image(systemName:"person")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    Button(action: {
                        self.viewRouter.currentPage = "GroupSearch"
                    }) {
                    Text("Group")
                        .foregroundColor(.white)
                        .font(.title)
                    }

                }
            .padding(.top,30)
            HStack {
                Button (action: {
                    self.viewRouter.currentPage = "HistoryResult"
                }){
                    Image(systemName: "clock")
                        .foregroundColor(.white)
                        .imageScale(.large)
                Text("Search History")
                    .foregroundColor(.white)
                    .font(.title)
                }
            }
            .padding(.top,30)
            Spacer()
            HStack {
                Image(systemName:"person")
                    .foregroundColor(.white)
                    .imageScale(.large)
                Text("Logout")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.bottom,30)
            }
        .padding()
        .frame(maxWidth:.infinity, alignment: .leading)
        .background(Color.blue)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu().environmentObject(ViewRouter())
    }
}

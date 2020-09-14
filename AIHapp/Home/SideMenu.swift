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
//            HStack {
//                Image(systemName:"person")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//                Button(action: {
//                    self.viewRouter.currentPage = "GroupSearch"
//                }) {
//                Text("Group")
//                    .foregroundColor(.blue)
//                    .font(.title)
//                }
//
//            }
                HStack {
                    Image(systemName:"person")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Button(action: {
                        self.viewRouter.currentPage = "GroupSearch"
                    }) {
                    Text("Group")
                        .foregroundColor(.blue)
                        .font(.title)
                    }

                }
            .padding(.top,30)
            HStack {
                Image(systemName:"envelope")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Messages")
                    .foregroundColor(.gray)
                    .font(.title)
            }
            .padding(.top,30)
            HStack {
                Image(systemName:"person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Logout")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top,30)
            Spacer()
            }
        .padding()
        .frame(maxWidth:.infinity, alignment: .leading)
        .background(Color(red:32/255,green:32/255,blue:32/255))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu().environmentObject(ViewRouter())
    }
}

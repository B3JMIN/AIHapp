////
////  Welcome.swift
////  AIHapp
////
////  Created by Cai Huichuan on 2020-09-11.
////  Copyright © 2020 Cai Huichuan. All rights reserved.
////
//
//import SwiftUI
//
//struct Welcome: View {
//    @EnvironmentObject var viewRouter:ViewRouter
//    private var clients = ["demo_client", "peel police", "police client", "test_client","York client"]
//    var body: some View {
//        VStack {
//            Text("Hello World!")
//                .toolbar {
//                    ToolbarItem(placement:.primaryAction){
//                        Menu {
//                            Picker(selection: $sort, label: Text("Sorting options")){
//                                Text("Size").tag(0)
//                                Text("Date").tag(1)
//                                Text("Location").tag(2)
//                            }
//                        }
//                        label:{
//                            Label("Sort", systemImage:"arrow.up.arrow.down")
//                        }
//                    }
//            }
//            Image("AIH-logo").resizable()
//                .frame(width:200, height: 200)
//            
//            HStack {
//                
//                Image(systemName: "house.fill")
//                
//            }
//            Text("Welcome to Log In")
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome().environmentObject(ViewRouter())
//    }
//}
//

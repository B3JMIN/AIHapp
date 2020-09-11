//
//  PersonDetail.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-07.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct PersonDetail: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader{ (proxy : GeometryProxy) in  // New Code
                          VStack(alignment: .center) {
                           Image("stmarylake")
                           .resizable()

                          .frame(width: 200, height: 200)
                            VStack {
                                Text("Benjamin Cai")
                                    .font(.title)
                                Text("he is a good man with charming eyes")
                                    .font(.subheadline)
                                HStack {
                                    Text("eyeColor: ")
                                    Divider()
                                    Text("black")
                                }
                                HStack {
                                    Text("hairColor")
                                    Divider()
                                    Text("black")
                                }
                                HStack {
                                    Text("Job")
                                    Divider()
                                    Text("Student")
                                }
                            }

                          }
                            .frame(width: proxy.size.width, height:proxy.size.height , alignment: .center) // New Code
                }
            Button(action: {
                self.viewRouter.currentPage = "HomePage"
            }) {
                Text("Home Page")
            }
        }
//        .navigationBarTitle(Text(person.name), displayMode: .inline)
    }
}

struct PersonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetail().environmentObject(ViewRouter())
    }
}

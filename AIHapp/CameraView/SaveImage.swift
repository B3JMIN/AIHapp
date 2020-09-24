//
//  SaveImage.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-15.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct SaveImage: View {
    @EnvironmentObject var viewRouter:ViewRouter
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action:{
                    self.viewRouter.currentPage = "HomePage"
                }){
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                        .padding()
                }
                Spacer()
            }
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
                            Text("black")
                        }
                        HStack {
                            Text("hairColor")
                            Text("black")
                        }
                        HStack {
                            Text("Job")
                            Text("Student")
                        }
                    }
                    
                }
                    .frame(width: proxy.size.width, height:proxy.size.height , alignment: .center) // New Code
            }
            Button(action: {
                self.viewRouter.currentPage = "HomePage"
            }) {
                Text("Save")
            }
        }
        
    }
}

struct SaveImage_Previews: PreviewProvider {
    static var previews: some View {
        SaveImage().environmentObject(ViewRouter())
    }
}

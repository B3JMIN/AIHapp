//
//  HomePage.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-11.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    @State var showMenu:Bool = false
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        SideMenu()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                    .gesture(drag)
            }
                .navigationBarTitle("Home", displayMode: .inline)
                .navigationBarItems(leading: (
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                ))
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().environmentObject(ViewRouter())
    }
}


struct MainView: View {
    @EnvironmentObject var viewRouter:ViewRouter
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack {
            Image("AIH-logo")
                .resizable()
                .scaledToFit()
                .frame(width:100,height:100)
                .padding(5)
            Spacer()
            Button(action: {
                self.viewRouter.currentPage = "CameraView"
            }) {
                Image(systemName:"camera.fill")
                    .imageScale(.large)
            }
            Spacer()
            Button(action:{
                self.viewRouter.currentPage = "StructView"
            }) {
                Text("structView")
            }
        }
    }
}


//struct GradientBackgroundStyle: ButtonStyle {
//
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .frame(minWidth: 0, maxWidth: .infinity)
//            .padding()
//            .foregroundColor(.white)
//            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
//            .cornerRadius(40)
//            .padding(.horizontal, 20)
//    }
//}



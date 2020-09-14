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
        VStack {
            Text("here is the main home page")
            Button(action: {self.viewRouter.currentPage = "CameraView"}){
                Text("Start")
            }
            
            Image("AIH-logo").resizable()
                .frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().environmentObject(ViewRouter())
    }
}

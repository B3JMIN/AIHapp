//
//  StructView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-17.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct GroupStructView: View {
    @EnvironmentObject var viewRouter:ViewRouter
    //    @State var isSelected:Bool = false
    //        let rows = Row.all()
    //    let cellsItems = Cells()
    //        let person =
    var body: some View {
        VStack{
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
            Spacer()
            List {
                VStack {
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    HStack {
                        CellwithButton(imageName:"blankImage")
                        CellwithButton(imageName:"turtlerock")
                        CellwithButton(imageName:"stmarylake")
                        CellwithButton(imageName:"chilkoottrail")
                    }
                    
                }
            }
            Button(action:{
                self.viewRouter.currentPage = "ImageDetail"
            }) {
                Text("Add to Image")
                    .font(.title)
                    .foregroundColor(.white)
            }.buttonStyle(UniversalButtonStyle())
        }
        
    }
}
struct GroupStructView_Previews: PreviewProvider {
    static var previews: some View {
        GroupStructView().environmentObject(ViewRouter())
    }
}


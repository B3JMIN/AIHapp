//
//  StructView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-15.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct StructView: View {
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
                // below are methods for
                //                ForEach(rows) { row in
                //                    HStack(alignment: .center) {
                //                        ForEach(row.cells) { cell in
                //                        CellwithButton(imageName: cell.imageName)
                //
                //                    }
                //                }
                //
                //            }.padding(EdgeInsets.init(top: 0, leading: -20, bottom: 0, trailing: -20))
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
                        CellwithButton( imageName:"chilkoottrail")
                    }
                    
                }
            }
            Button(action:{
                self.viewRouter.currentPage = "AlbumSelectPage"
            }) {
                Text("Add")
                    .font(.title)
                    .foregroundColor(.white)
            }.buttonStyle(UniversalButtonStyle())
            //                List {
            ////                    ForEach(cellsItems) { cellItem in
            //                        HStack(alignment:.center) {
            //                            VStack {
            //                                CellwithButton(imageName: "turtlerock")
            //                                CellwithButton(imageName: "blankImage")
            //                                CellwithButton(imageName: "rainbowlake")
            //                            }
            //                        }
            //                    }
            //                }.padding(EdgeInsets.init(top: 0, leading: -20, bottom: 0, trailing: -20))
        }
        
    }
}
struct StructView_Previews: PreviewProvider {
    static var previews: some View {
        StructView().environmentObject(ViewRouter())
    }
}


struct CellwithButton: View {
    @State private var isSelected:Bool = false
    //    let btnCheckMarkImage  = UIImage(CGImage: nil)
    //    let btnBlankImage = UIImage(contentsOfFile: "")
    var imageName:String
    var id = UUID()
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
            GeometryReader{ (proxy:GeometryProxy) in
                VStack (alignment: .trailing){
                    Button(action: {
                        self.isSelected.toggle()
                    }) {
                        Image(systemName: self.isSelected ? "checkmark.circle.fill" : "nil")
                            // here I dont know how to put image to nil so
                            // it will continue warning for not finding nil
                            // can add a nil picture
                            .resizable()
                            .edgesIgnoringSafeArea(.top)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.blue)
                    }
                }
                .frame(width:proxy.size.width, height: proxy.size.height, alignment: .topTrailing)
            }
        }
    }
}

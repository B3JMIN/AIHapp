//
//  PicCell.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-15.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI
import Foundation

struct Row: Identifiable {
    let id = UUID()
    let cells: [Cell]
}

extension Row {
    
}

extension Row {
    static func all() -> [Row] {
        
        return [
            
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"), Cell(imageName: "rainbowlake"), Cell(imageName: "stmarylake")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "stmarylake"),Cell(imageName: "twinlake")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "turtlerock"), Cell(imageName: "icybay")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "twinlake"), Cell(imageName: "rainbowlake")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "yukon_charleyrivers"),Cell(imageName: "blankImage")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "umbagog"),Cell(imageName: "yukon_charleyrivers")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "rainbowlake"),Cell(imageName: "umbagog")]),
            Row(cells: [Cell(imageName: "blankImage"), Cell(imageName: "turtlerock"),Cell(imageName: "icybay"),Cell(imageName: "turtlerock")]),
//            Row(cells: [CellwithButton(imageName: "blankImage"),CellwithButton(imageName: "turtlerock"), CellwithButton(imageName: "umbagog")]),
//            Row(cells: [CellwithButton(imageName: "blankImage"),CellwithButton(imageName: "turtlerock"), CellwithButton(imageName: "umbagog")])
        ]
        
    }
    
}

struct Cell: Identifiable {
    let id = UUID()
    let imageName: String
}

struct Cells: Identifiable {
    let id = UUID()
    let content = [
        Cell(imageName: "umbagog"), Cell(imageName: "blackImage"), Cell(imageName: "turtlerock"),
        Cell(imageName: "rainbowlake"), Cell(imageName: "umbagog"), Cell(imageName: "umbagog"),
    ]
}
//
//struct CellwithButton: View {
//    @State var isSelected:Bool = false
//
//    var imageName:String
//    let id = UUID()
//    var body: some View {
//        ZStack {
//            Image(imageName)
//            Button(action:{
//                self.isSelected = true
//            }) {
//                Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
//                .resizable()
//                .frame(width: 20, height: 20)
//            }
//            GeometryReader{ (proxy:GeometryProxy) in
//                VStack (alignment: .trailing){
//                    Image(systemName: self.isSelected ? "checkmark.circle.fill" : "circle")
//                        .resizable()
//                        .edgesIgnoringSafeArea(.top)
//                        .frame(width: 20, height: 20)
//                }
//                .frame(width:proxy.size.width, height: proxy.size.height, alignment: .topLeading)
//            }
//        }
//    }
//}

//
//  HistoryDateSelector.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-011.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct HistoryResult: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var resultStartDate = Date()
    @State var resultEndDate = Date()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.viewRouter.currentPage = "HomePage"
                }){
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                }
                Spacer()
                Text("History")
                    .bold()
                    .font(.largeTitle)
                    .frame(width:100, height: 100, alignment: .center)
                Text("Search")
                    .foregroundColor(.blue)
                .bold()
                .padding()
            }
            Form {
                DatePicker("Start", selection: $resultStartDate, displayedComponents: .date)
                DatePicker("End", selection: $resultEndDate, displayedComponents: .date)
//                         VStack {
//                                 HStack {
//                                     TargetImage(portrait: "blankImage")
//                                     SimilarityBar(similarity:0.3223)
//                                     TargetImage(portrait: "turtlerock")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "twinlake")
//                                     SimilarityBar(similarity: 0.8753)
//                                     TargetImage(portrait: "silversalmoncreek")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "icybay")
//                                     SimilarityBar(similarity: 0.7754)
//                                     TargetImage(portrait: "chincoteague")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "silversalmoncreek")
//                                     SimilarityBar(similarity: 0.7864)
//                                     TargetImage(portrait: "stmarylake")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "chilkoottrail")
//                                     SimilarityBar(similarity: 0.2190)
//                                     TargetImage(portrait: "rainbowlake")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "umbagog")
//                                     SimilarityBar(similarity: 0.2235)
//                                     TargetImage(portrait: "yukon_charleyrivers")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "twinlake")
//                                     SimilarityBar(similarity: 0.2847)
//                                     TargetImage(portrait: "hiddenlake")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "silversalmoncreek")
//                                     SimilarityBar(similarity: 0.4537)
//                                     TargetImage(portrait: "icybay")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "blankImage")
//                                     SimilarityBar(similarity: 0.6753)
//                                     TargetImage(portrait: "stmarylake")
//                                 }
//                                 .padding(5)
//                                 HStack {
//                                     TargetImage(portrait: "turtlerock")
//                                     SimilarityBar(similarity: 0.9784)
//                                     TargetImage(portrait: "twinlake")
//                                 }
//                                 .padding(5)
//                 }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}


struct HistoryResult_Previews: PreviewProvider {
    static var previews: some View {
        HistoryResult().environmentObject(ViewRouter())
    }
}

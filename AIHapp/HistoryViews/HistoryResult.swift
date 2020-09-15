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
                         VStack {
                                 HStack {
                                     SmallPortrait(portrait: "blankImage")
                                     SimilarityBar(similarity:0.3223)
                                     SmallPortrait(portrait: "turtlerock")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "twinlake")
                                     SimilarityBar(similarity: 0.8753)
                                     SmallPortrait(portrait: "silversalmoncreek")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "icybay")
                                     SimilarityBar(similarity: 0.7754)
                                     SmallPortrait(portrait: "chincoteague")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "silversalmoncreek")
                                     SimilarityBar(similarity: 0.7864)
                                     SmallPortrait(portrait: "stmarylake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "chilkoottrail")
                                     SimilarityBar(similarity: 0.2190)
                                     SmallPortrait(portrait: "rainbowlake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "umbagog")
                                     SimilarityBar(similarity: 0.2235)
                                     SmallPortrait(portrait: "yukon_charleyrivers")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "twinlake")
                                     SimilarityBar(similarity: 0.2847)
                                     SmallPortrait(portrait: "hiddenlake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "silversalmoncreek")
                                     SimilarityBar(similarity: 0.4537)
                                     SmallPortrait(portrait: "icybay")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "blankImage")
                                     SimilarityBar(similarity: 0.6753)
                                     SmallPortrait(portrait: "stmarylake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(portrait: "turtlerock")
                                     SimilarityBar(similarity: 0.9784)
                                     SmallPortrait(portrait: "twinlake")
                                 }
                                 .padding(5)
                 }
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

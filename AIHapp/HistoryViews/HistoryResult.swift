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
            HStack(alignment: .center) {
                Button(action: {
                    self.viewRouter.currentPage = "HomePage"
                })
                {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding()
                    .padding(.trailing, 55)
                }
                Spacer()
//                History is not at center
                Text("History")
                    .bold()
                    .font(.largeTitle)
                Spacer()
                Text("Search")
                    .foregroundColor(.blue)
                .bold()
                .padding()
            }
            Form {
                DatePicker("Start", selection: $resultStartDate, displayedComponents: .date)
                DatePicker("End", selection: $resultEndDate, displayedComponents: .date)
//                All here can use a foreach loop to represent
                         VStack {
                                 HStack {
                                    SmallPortrait(ImageName: "blankImage")
                                     SimilarityBar(similarity:0.3223)
                                     SmallPortrait(ImageName: "turtlerock")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "twinlake")
                                     SimilarityBar(similarity: 0.8753)
                                     SmallPortrait(ImageName: "silversalmoncreek")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "icybay")
                                     SimilarityBar(similarity: 0.7754)
                                     SmallPortrait(ImageName: "chincoteague")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "silversalmoncreek")
                                     SimilarityBar(similarity: 0.7864)
                                     SmallPortrait(ImageName: "stmarylake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "chilkoottrail")
                                     SimilarityBar(similarity: 0.2190)
                                     SmallPortrait(ImageName: "rainbowlake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "umbagog")
                                     SimilarityBar(similarity: 0.2235)
                                     SmallPortrait(ImageName: "yukon_charleyrivers")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "twinlake")
                                     SimilarityBar(similarity: 0.2847)
                                     SmallPortrait(ImageName: "hiddenlake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "silversalmoncreek")
                                     SimilarityBar(similarity: 0.4537)
                                     SmallPortrait(ImageName: "icybay")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName: "blankImage")
                                     SimilarityBar(similarity: 0.6753)
                                     SmallPortrait(ImageName: "stmarylake")
                                 }
                                 .padding(5)
                                 HStack {
                                     SmallPortrait(ImageName:"turtlerock")
                                     SimilarityBar(similarity: 0.9784)
                                     SmallPortrait(ImageName:"twinlake")
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

//
//  Home.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-10.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "HistoryDateSelector"{
                HistoryDateSelector()
            }else if viewRouter.currentPage == "Similarity" {
                SimilarityBar(similarity: 0.3443)
            }else if viewRouter.currentPage == "CameraResult" {
                CameraResult()
            }else if viewRouter.currentPage == "CameraView" {
                CameraView()
            }else if viewRouter.currentPage == "HistoryResult" {
                HistoryResult()
            }else if viewRouter.currentPage == "PersonDetail" {
                PersonDetail()
            }else if viewRouter.currentPage == "HomePage" {
                HomePage()
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(ViewRouter())
    }
}

//
//  HistoryDateSelector.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-08.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct HistoryDateSelector: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var selectedStartDate = Date()
    @State var selectedEndDate = Date()
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.viewRouter.currentPage = "HistoryResult"
                }) {
                    Text("Search")
                }
            }
            Form {
                DatePicker("Start", selection: $selectedStartDate, displayedComponents: .date)
                DatePicker("End", selection: $selectedEndDate,
                    displayedComponents: .date)
                VStack {
                    Text("Please select a Range of Date")
                }
            }
        }
    }
}

struct HistoryDateSelector_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDateSelector().environmentObject(ViewRouter())
    }
}

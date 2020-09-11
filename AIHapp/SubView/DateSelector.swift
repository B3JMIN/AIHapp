//
//  DateSelector.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-08.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct DateSelector: View {
    var greetText: String
    @State var selectedDate = Date()
    var body: some View {
        Form {
            DatePicker(greetText, selection: $selectedDate, in: ...Date(), displayedComponents: .date)
        }
    }
}

struct DateSelector_Previews: PreviewProvider {
    static var previews: some View {
        DateSelector(greetText: "Hello")
    }
}

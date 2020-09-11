//
//  PersonRow.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-07.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct PersonRow: View {
    var person: Person
    
    var body: some View {
        HStack {
            Image("blankImage")
            .resizable()
                .frame(width: 100, height: 100, alignment: .bottom)
            Spacer()
            Text("100%")
            Spacer()
            person.image
            .resizable()
                .frame(width: 100, height: 100, alignment: .top)
        }
    }
}


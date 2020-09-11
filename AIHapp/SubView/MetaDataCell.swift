//
//  MetaDataCell.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-10.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct MetaDataCell: View {
    
    var key: String
    var value: String
    
    var body: some View {
        VStack {
            Text(key)
            Spacer()
            Text(value)
            
            EditButton()
                .foregroundColor(Color.blue)
        }
    }
}

struct MetaDataCell_Previews: PreviewProvider {
    static var previews: some View {
        MetaDataCell(key: "Hello", value: "World")
    }
}

//
//  Portrait.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-04.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct Portrait: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Rectangle())
            .shadow(radius: 10)
    }
}

struct Portrait_Previews: PreviewProvider {
    static var previews: some View {
        Portrait(image: Image("turtlerock"))
    }
}

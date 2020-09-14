//
//  AlbumHome.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-08.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI
import PhotosUI

struct AlbumHome: View {
    @EnvironmentObject var viewRouter:ViewRouter
    
//    @State private var isSelected:Bool
//    @State var photoResult: [UIImage] = []
//    Here we plan to use a beta version of PH
//    var config: PHPickerConfiguration  {
//        var config = PHPickerConfiguration(ph)
//    }
    var body: some View {
        Text("need to be done")
    }
}

struct AlbumHome_Previews: PreviewProvider {
    static var previews: some View {
        AlbumHome().environmentObject(ViewRouter())
    }
}

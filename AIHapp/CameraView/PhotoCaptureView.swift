//
//  PhotoCaptureView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-04.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct PhotoCaptureView: View {
    
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    @Binding var useCamera: Bool
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image, useCamera:$useCamera)
    }
}

#if DEBUG
struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")), useCamera: .constant(false))
    }
}
#endif

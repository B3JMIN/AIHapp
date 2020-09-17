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
            }
            else if viewRouter.currentPage == "CameraView" {
                CameraView()
            }
            else if viewRouter.currentPage == "HistoryResult" {
                HistoryResult()
            }else if viewRouter.currentPage == "PersonDetail" {
                PersonDetail()
            }else if viewRouter.currentPage == "HomePage" {
                HomePage()
            }else if viewRouter.currentPage == "GroupSearch"{
                GroupSearch()
            }else if viewRouter.currentPage == "StructView"{
                StructView()
            }else if viewRouter.currentPage == "GroupAddImage"{
                GroupAddImage(showImagePicker: .constant(false), image: .constant(Image("")), useCamera: .constant(false))
            }else if viewRouter.currentPage == "EditImagePage"{
                EditImage()
            }else if viewRouter.currentPage == "SaveImagePage"{
                SaveImage()
            }else if viewRouter.currentPage == "SearchSettingPage"{
                SearchSetting()
            }else if viewRouter.currentPage == "PhotoResult"{
                PhotoResult()
            }else if viewRouter.currentPage == "StructView"{
                StructView()
            }else if viewRouter.currentPage == "AlbumSelectPage"{
                AlbumSelect()
            }else if viewRouter.currentPage == "AlbumResultPage"{
                AlbumResult()
            }else if viewRouter.currentPage == "ImageDetail"{
                ImageDetail()
            }else if viewRouter.currentPage == "GroupStructView"{
                GroupStructView()
            }else if viewRouter.currentPage == "PersonDeletePage"{
                PersonDelete()
            }else if viewRouter.currentPage == "ImageAddPage" {
                ImageAdd()
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(ViewRouter())
    }
}

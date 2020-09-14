//
//  ViewRouter.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-10.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//
import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let willchange = PassthroughSubject<ViewRouter,Never>()
    
    @Published var currentPage: String = "HomePage" {
        didSet {
            withAnimation(){
                willchange.send(self)
            }
        }
    }
}

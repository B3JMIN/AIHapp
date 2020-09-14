//
//  Group.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-09.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//
//
import SwiftUI
import Foundation


struct Group:Identifiable, Codable{
    var id: String?
    var title:String
    var completed:Bool
    var personNumber:Int
}


let TestGroup = [
    Group(id: "hello", title: "Hello World", completed: true, personNumber: 14),
    Group(id:"thanks", title: "good morning", completed: false, personNumber: 7)
]

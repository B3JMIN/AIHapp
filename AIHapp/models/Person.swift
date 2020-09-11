//
//  Person.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-04.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI


struct Person: Codable, Hashable, Identifiable {
        var id: Int
        var name: String
        fileprivate var imageName: String
        var description: String
//        var state: String
//        var park: String
//        var eyeColor: String
//        var hairColor: String
        var metaData: [String: String] = [:]
    
    static let `default` = Self(id: 122344, name: "Benjamin Cai", imageName: "blankimage", description: "A nice friendly person working in Manhattan", metaData: ["eyeColor":"red", "hairColor": "red", "job": "Computer Engineers"])
    }

    extension Person {
        var image: Image {
            ImageStore.shared.image(name: imageName)
        }
        
        mutating func addMetaData(key: String, value: String) {
            metaData[key] = value
        }
}
    



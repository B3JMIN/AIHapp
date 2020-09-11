////
////  PersonList.swift
////  AIHapp
////
////  Created by Cai Huichuan on 2020-09-07.
////  Copyright © 2020 Cai Huichuan. All rights reserved.
////
//
//import SwiftUI
//
//struct PersonList: View {
//    var body: some View {
//        NavigationView {
//            List(personData){ Person in
//                NavigationLink(destination: PersonDetail(person: Person)) {
//                    PersonRow(person: Person)
//                }
//            }
//        .navigationBarTitle(Text("Persons"))
//        }
//    }
//}
//
//struct PersonList_Previews: PreviewProvider {
//    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
//            PersonList()
//            .previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//        }
//    }
//}

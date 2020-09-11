////
////  PersonHost.swift
////  AIHapp
////
////  Created by Cai Huichuan on 2020-09-10.
////  Copyright © 2020 Cai Huichuan. All rights reserved.
////
//
//import SwiftUI
//
//struct PersonHost: View {
//    @Environment(\.editMode) var mode
//    @EnvironmentObject var userData: UserData
//    @State var draftProfile = Person.default
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing:20) {
//            HStack {
//                if self.mode?.wrappedValue == .active {
//                    Button("Cancel"){
//                        self.draftProfile = self.userData.profile
//                        self.mode?.wrappedValue = .inactive
//                    }
//                }
//                
//                Spacer()
//                
//                EditButton()
//            }
//            if self.mode?.wrappedValue == .inactive {
//                PersonSummary(profile: userData.profile)
//            } else {
//                PersonEdit(profile: $draftProfile)
//                    .onAppear {
//                        self.$draftProfile = self.userData.profile
//                    }
//                    .onDisappear {
//                        self.userData.profile = self.draftProfile
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//struct PersonHost_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonHost().environmentObject(userData())
//    }
//}

////
////  SearchBar.swift
////  AIHapp
////
////  Created by Cai Huichuan on 2020-09-09.
////  Copyright © 2020 Cai Huichuan. All rights reserved.
////
//
//
//import SwiftUI
//
//struct ContentView: View {
//
//    private var todoItems = [ Text("Meet Eddie for lunch"),
//                              Text("Buy toilet paper"),
//                              Text("Write a new tutorial"),
//                              Text("Buy two bottles of wine"),
////                              Text("Prepare the presentation deck")
//                                ]
//
//    @State private var searchText = ""
//
//    var body: some View {
//
//        ZStack {
//
//            VStack {
//
//                HStack {
//                    Text("ToDo List")
//                        .font(.system(size: 40, weight: .black, design: .rounded))
//
//                    Spacer()
//
//                    Button(action: {
//                        // show new task view
//
//                    }) {
//                        Image(systemName: "plus.circle.fill")
//                            .font(.largeTitle)
//                            .foregroundColor(.purple)
//                    }
//                }
//                .padding()
//
//                SearchBar(text: $searchText)
//                    .padding(.top, -30)
//
//                List(todoItems.filter({ searchText.isEmpty ? true : $0(searchText) })) { item in
//                    Text(item)
//                }
//
//
//            }
//
//        }
//    }
//
//}
//
//
//struct SearchBar: View {
//    @Binding var text: String
//
//    @State private var isEditing = false
//
//    var body: some View {
//        HStack {
//
//            TextField("Search ...", text: $text)
//                .padding(7)
//                .padding(.horizontal, 25)
//                .background(Color(.systemGray6))
//                .cornerRadius(8)
//                .overlay(
//                    HStack {
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.gray)
//                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                            .padding(.leading, 8)
//
//                        if isEditing {
//                            Button(action: {
//                                self.text = ""
//
//                            }) {
//                                Image(systemName: "multiply.circle.fill")
//                                    .foregroundColor(.gray)
//                                    .padding(.trailing, 8)
//                            }
//                        }
//                    }
//                )
//                .padding(.horizontal, 10)
//                .onTapGesture {
//                    self.isEditing = true
//                }
//
//            if isEditing {
//                Button(action: {
//                    self.isEditing = false
//                    self.text = ""
//
//                    // Dismiss the keyboard
//                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//                }) {
//                    Text("Cancel")
//                }
//                .padding(.trailing, 10)
//                .transition(.move(edge: .trailing))
//                .animation(.default)
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

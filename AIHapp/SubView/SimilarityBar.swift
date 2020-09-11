//
//  SwiftUIView.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-09.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//

import SwiftUI

struct Similarity: View {
    @EnvironmentObject var viewRouter:ViewRouter
    
    var similarityValue: Float = 0.9233
    
    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SimilarityBar(similarity: similarityValue)
                    .frame(width: 175.0, height: 175.0)
                    .padding(40.0)
                
                Spacer()
            }
        }
    }
}

struct SimilarityBar: View {
    var similarity: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5.0)
                .opacity(0.3)
                .foregroundColor(Color.blue)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.similarity, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.blue)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)

            Text(String(format: "%5.2f%%%", min(self.similarity, 1.0)*100.0))
                .font(.body)
                .bold()
        }
    }
}


struct Similarity_Previews: PreviewProvider {
    static var previews: some View {
        Similarity().environmentObject(ViewRouter())
    }
}

//
//  ContentView.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
        //BadgeBackground()
//        Text("Hello there")
//            .font(Font.system(size: 32.0))
//            .fontWeight(.bold)
//            .multilineTextAlignment(.center)
//            .clipped()
            
    }
}

#Preview {
    ContentView().environment(ModelData())
}

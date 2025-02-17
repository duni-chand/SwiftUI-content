//
//  ContentView.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
            case featured
            case list
        }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        //LandmarkList()
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

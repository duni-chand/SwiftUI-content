//
//  LandmarkList.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 13/02/25.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    //@EnvironmentObject
    
    
    @State private var showFavoriteOnly = true
    
    var filterdLandmarks : [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        
        NavigationSplitView {
            
            List {
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites only")
                })
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandmarks)
            .navigationTitle("Landmarks")
            
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}


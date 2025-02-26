//
//  PPageView.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 17/02/25.
//

import SwiftUI

struct PPageView<XPage:View>: View {
    
    var ppages: [XPage]
    var body: some View {
        NewPageViewController(ppages: ppages)
            .aspectRatio(3/2 ,contentMode: .fit)
    }
}

#Preview {
    PPageView(
        ppages: ModelData().features.map{ FeatureCard(landmark: $0)
        })
}

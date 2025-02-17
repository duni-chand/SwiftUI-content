//
//  CircleImage.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 13/02/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(.circle)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 20)
        
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}

//
//  FirstText.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 13/02/25.
//

import SwiftUI
import CoreLocation


struct FirstText: View {
    var body: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
            .frame(height: 300)
        CircleImage(image: Image("turtlerock"))
            .offset(y: -150)
            .padding(.bottom, -150)
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
                Text("Description text goes here")
                
        }
        .padding()
        Spacer()
        
    }
}


#Preview {
    FirstText()
}

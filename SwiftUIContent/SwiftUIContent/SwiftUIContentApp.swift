//
//  SwiftUIContentApp.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 12/02/25.
//

import SwiftUI

@main
struct SwiftUIContentApp: App {
    
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

//
//  EnvironmentTest.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 14/02/25.
//

import Foundation
import SwiftUI

// Define a custom environment key
struct UsernameKey: EnvironmentKey {
    static let defaultValue: String = "Guest"
}

// Extend EnvironmentValues to include the custom environment key
extension EnvironmentValues {
    var username: String {
        get { self[UsernameKey.self] }
        set { self[UsernameKey.self] = newValue }
    }
}

struct ProfileView: View {
    @Environment(\.username) var username
    
    var body: some View {
        VStack {
            Text("Hello, \(username)!")
                .font(.largeTitle)
                .padding()
        }
    }
}

func printSomething(updated: String) {
    print("updated Value new = \(updated)")
}

struct EnvironmentTest: View {
    @State private var username = "John Doe"
    
    var body: some View {
        
       
        ProfileView()
            .environment(\.username, "myjeneration")
        Button(action: {
            print("Button Pressed")
            
            username = "New Name"
        }, label: {
            Text("Press me")
        })
    }
}

#Preview{
    EnvironmentTest()
}

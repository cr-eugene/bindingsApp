//
//  bindingsApp.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

@main
struct bindingsApp: App {
    @State private var people:[Person] = []
    
    var body: some Scene {
        WindowGroup {
            ContentView(people: $people)
        }
    }
}

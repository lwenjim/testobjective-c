//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/27.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

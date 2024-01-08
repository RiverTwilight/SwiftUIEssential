//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by René Wang on 2024/1/6.
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

//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Eric Hanna on 2022-08-04.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

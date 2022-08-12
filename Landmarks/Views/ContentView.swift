//
//  ContentView.swift
//  Landmarks
//
//  Created by Eric Hanna on 2022-08-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(ModelData())
        
    }
}

//
//  ContentView.swift
//  Landmarks
//
//  Created by René Wang on 2024/1/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

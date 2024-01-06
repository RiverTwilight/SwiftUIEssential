//
//  CircleImage.swift
//  Landmarks
//
//  Created by René Wang on 2024/1/6.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4 ))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}

//
//  FeatureCard.swift
//  Landmarks
//
//  Created by René Wang on 2024/1/17.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
    }
}

#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3 / 2, contentMode: .fit)
}

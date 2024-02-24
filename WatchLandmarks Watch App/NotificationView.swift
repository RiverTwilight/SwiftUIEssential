//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by René Wang on 2024/2/24.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles")
                .font(.caption)
        }
    }
}

#Preview {
    NotificationView()
}

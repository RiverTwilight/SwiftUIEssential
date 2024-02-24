//
//  NotificationController.swift
//  WatchLandmarks Watch App
//
//  Created by René Wang on 2024/2/24.
//

import Foundation
import WatchKit
import UserNotifications
import SwiftUI

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    let landmarkIndexKey = "landmarkIndex"
    
    override var body: NotificationView {
        NotificationView(
            title: title,
            message: message,
            landmark: landmark
        )
    }
    
    override func didReceive(_ notification: UNNotification) {
        let modelData = ModelData()
        
        let notificationData = notification.request.content.userInfo as? [String: Any]
        
        let aps = notificationData?["aps"] as? [String: Any]
        let alert = aps?["alert"] as? [String: Any]
        
        title = alert?["title"] as? String
        message = alert?["body"] as? String
        
        if let index = notificationData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
}

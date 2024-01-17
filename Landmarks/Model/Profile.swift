//
//  Profile.swift
//  Landmarks
//
//  Created by René Wang on 2024/1/17.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    //  A special syntax in Swift that allows you to use reserved words as identifiers.
    static let `default` = Profile(username: "g_kumar")


    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"


        var id: String { rawValue }
    }
}

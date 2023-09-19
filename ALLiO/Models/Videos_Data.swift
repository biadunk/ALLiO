//
//  Videos_Data.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 06/09/2023.
//

import Foundation
import SwiftUI


struct Video: Identifiable {
    let id = UUID()
    let title: String
    let video_image: String
    let upload_date: String //narazie string dla mniejszych komplikacji
}

struct VideoList {
    static let all_videos = [
        Video(title: "Movie", video_image: "person", upload_date: "25.2.2002"),
        Video(title: "Movie 2", video_image: "house", upload_date: "09.09.2023")
    ]
}

//
//  ALLiO_Videos_Main_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 04/09/2023.
//

import SwiftUI

struct ALLiO_Videos_Main_View: View {
    
    var Videos: [Video] = VideoList.all_videos
    
    var body: some View {
        NavigationView {
            List (Videos, id: \.id) { videos in
                HStack{
                    Image(videos.video_image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .frame(width: 100, height: 60)
                    VStack{
                        Text(videos.title)
                            .padding()
                        Text(videos.upload_date)
                            .font(.system(size: 10))
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ALLiO_Videos_Main_View_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_Videos_Main_View()
    }
}

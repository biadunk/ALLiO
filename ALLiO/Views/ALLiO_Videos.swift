//
//  ALLiO_Videos.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 23/08/2023.
// ALLiO Videos is something like TikTok

import SwiftUI

struct ALLiO_Videos: View {
    var body: some View {
        TabView {
            ALLiO_Videos_Main_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ALLiO_Videos_Profile_View()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(Color.black)
        .ignoresSafeArea()
    }
}

struct ALLiO_Videos_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_Videos()
    }
}

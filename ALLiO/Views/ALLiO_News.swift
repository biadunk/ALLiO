//
//  ALLiO_News.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 23/08/2023.
// ALLiO News is something like Facebook

import SwiftUI

struct ALLiO_News: View {
    var body: some View {
        TabView {
            ALLiO_News_Main_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ALLiO_News_Profile_View()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(Color.black)
        .ignoresSafeArea()
    }
}

struct ALLiO_News_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_News()
    }
}

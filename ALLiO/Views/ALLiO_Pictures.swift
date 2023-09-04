//
//  ALLiO_Pictures.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 23/08/2023.
// ALLiO Pictures is something like Instagram

import SwiftUI

struct ALLiO_Pictures: View {
    var body: some View {
        TabView {
            ALLiO_Pictures_Main_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ALLiO_Pictures_Profile_View()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(Color.black)
        .ignoresSafeArea()
    }
}

struct ALLiO_Pictures_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_Pictures()
    }
}

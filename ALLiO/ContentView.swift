//
//  ContentView.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 23/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack{
                VStack (spacing: 40){
                    // ala facebook
                    NavigationLink(destination: ALLiO_News()) {
                        Image(systemName: "newspaper")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    
                    //ala instagram
                    NavigationLink(destination: ALLiO_Pictures()) {
                        Image(systemName: "photo.artframe")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    
                    //ala youtube
                    NavigationLink(destination: ALLiO_Videos()) {
                        Image(systemName: "video")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    
                    //ala X
                }
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

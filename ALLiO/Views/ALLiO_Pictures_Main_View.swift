//
//  ALLiO_Pictures_Main_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 04/09/2023.
//

import SwiftUI

struct ALLiO_Pictures_Main_View: View {
    
    @State private var didTap: Bool = true
    
    var body: some View {
        NavigationView {
            VStack{
                Image("Instagram-apk")
                    .resizable()
                    .frame(width: .infinity, height: 300) //do poprawki - wstawic pprostokat i wypelnic go zdjeciem
                HStack{
                    Button {
                        self.didTap.toggle()
                    } label: {
                        Image(systemName: "heart")
                    }
                    .background(didTap ? Color.white : Color.red)
                    .frame(width: 100, height: 100)

                }
                
            }
        }
    }
}

struct ALLiO_Pictures_Main_View_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_Pictures_Main_View()
    }
}

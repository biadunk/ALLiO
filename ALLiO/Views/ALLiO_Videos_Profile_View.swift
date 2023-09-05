//
//  ALLiO_Videos_Profile_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 04/09/2023.
//

import SwiftUI

struct ALLiO_Videos_Profile_View: View {
    var body: some View {
        VStack{
            Circle()
                .frame(width: 200, height: 200)
                .padding()
            
            Text("Nickname")
                .fontWeight(.bold)
                .font(.system(size: 40))
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .padding()
                .font(.system(size: 20))
        }
    }
}

struct ALLiO_Videos_Profile_View_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_Videos_Profile_View()
    }
}

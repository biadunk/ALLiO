//
//  ALLiO_Search_News_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 20/09/2023.
//

import SwiftUI

struct ALLiO_Search_News_View: View {
    
    @Binding var searching_Text: String
    @State private var is_Editing: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Search...", text: $searching_Text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.is_Editing = true
                    }
        
                if is_Editing == true {
                    Button {
                        self.is_Editing = false
                        self.searching_Text = ""
                    } label: {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
                
                List{
                    VStack{ //tyle userow dla testu
                        Image(systemName: "Person")
                        Text("username")
                        
                        Image(systemName: "Person")
                        Text("username")
                        
                        Image(systemName: "Person")
                        Text("username")
                        
                        Image(systemName: "Person")
                        Text("username")
                        
                        Image(systemName: "Person")
                        Text("username")
                    }
                }
                
            }
        }
    }
}

struct ALLiO_Search_News_View_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_Search_News_View()
    }
}

//
//  ALLiO_News_Main_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 04/09/2023.
//

import SwiftUI

struct ALLiO_News_Main_View: View {
    @State private var didTapLike: Bool = false
    @State private var didTapComment: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "newspaper")
                    
                    Spacer()
                    
                    Text("News")
                        .font(.system(size: 20))
                        .frame(alignment: .center)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    Spacer()
                }
                
                List{
                    NavigationLink {
                        ALLiO_News_Profile_View()
                    } label: {
                        HStack{
                            Image(systemName: "person")
                            Text("Username")
                        }
                    }
                    
                    
                    Image("News_photo")
                        .resizable()
                        .frame(width: 350, height: 330)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled")
                        
                    HStack{
                        Spacer()
                        Button {
                            didTapLike.toggle()
                        } label: {
                            HStack{
                                Image(systemName: "hand.thumbsup")
                                    .background(didTapLike ? Color.cyan : Color.white)
                                Text("Like")
                            }
                        }
                        
                        Spacer()
                        Spacer()
                    
                        Button {
                            didTapComment.toggle() //przy tapnieciu na button wysuwa sie Comment_View z komentarzami i mozliwoscia napisania komentarza
                        } label: {
                            HStack{
                                Image(systemName: "cloud.heavyrain")
                                Text("Comment")
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ALLiO_News_Main_View_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_News_Main_View()
    }
}

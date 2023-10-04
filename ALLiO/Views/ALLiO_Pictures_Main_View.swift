//
//  ALLiO_Pictures_Main_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 04/09/2023.
//

import SwiftUI

struct ALLiO_Pictures_Main_View: View {
    @State private var didTap: Bool = false
    @State private var didTapComment: Bool = false
    
    @State var postPictures: [PostsOfPictures] = [
        .init(userPhoto: "person", username: "Username", photo: "Instagram-apk", description: "Lorem ipsum", didTap: false)
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack{
                    ForEach(postPictures) { post in
                        VStack{
                            NavigationLink {
                                ALLiO_Videos_Profile_View()
                            } label: {
                                HStack {
                                    Image(systemName: post.userPhoto)
                                    Text(post.username)
                                }
                            }
                            
                            Image("Instagram-apk")
                                .resizable()
                                .frame(width: 350, height: 330)
                            
                            HStack{
                                Button {
                                    if let postIndex = postPictures.firstIndex(
                                        where: { $0.id == post.id }
                                    ) {
                                        postPictures[postIndex].didTap.toggle()
                                    }
                                } label: {
                                    Image(systemName: post.didTap ? "heart.fill" : "heart")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .tint(Color.red)
                                }
                                
                                Button {
                                    //coment
                                } label: {
                                    Image(systemName: "message")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .tint(Color.red)
                                }
                                
                                Button{
                                    //share
                                } label: {
                                    Image(systemName: "paperplane.fill")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .tint(Color.red)
                                }

                                

                            }
                            
                            

                        }
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup {
                    Image(systemName: "photo")
                        
                    Text("Pictures")
                        .padding(90)
                        .font(.system(size: 25))
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


struct PostsOfPictures: Identifiable {
    public let id: String = UUID().uuidString
    var userPhoto: String
    var username: String
    var photo: String
    var description: String
    var didTap: Bool
}


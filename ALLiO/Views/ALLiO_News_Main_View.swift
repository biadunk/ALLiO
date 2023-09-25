//
//  ALLiO_News_Main_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 04/09/2023.
//

struct Post: Identifiable {
    public let id: String = UUID().uuidString
    var userPhoto: String
    var username: String
    var newsPhoto: String
    var description: String
    var isLiked: Bool
}

import SwiftUI

struct ALLiO_News_Main_View: View {
    @State private var isPresented: Bool = false
    @State var posts: [Post] = [
        .init(userPhoto: "person", username: "Username", newsPhoto: "News_photo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled", isLiked: false)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(posts) { post in
                        VStack {
                            NavigationLink {
                                ALLiO_News_Profile_View()
                            } label: {
                                HStack {
                                    Image(systemName: post.userPhoto)
                                    Text(post.username)
                                }
                            }
                            
                            Image(post.newsPhoto)
                                .resizable()
                                .frame(width: 350, height: 330)
                            
                            Text(post.description)
                                .padding(.vertical, 32)
                                
                            HStack(spacing: 16) {
                                Button {
                                    if let postIndex = posts.firstIndex(
                                        where: { $0.id == post.id }
                                    ) {
                                        posts[postIndex].isLiked.toggle()
                                    }
                                } label: {
                                    HStack{
                                        Image(systemName: post.isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                                        Text("Like")
                                    }
                                }
                                .padding(.leading, 32)
                                
                                Spacer()
                            
                                Button(action: {
                                    self.isPresented.toggle()
                                }, label: {
                                    HStack{
                                        Image(systemName: "cloud.heavyrain")
                                        Text("Comment")
                                    }
                                    .sheet(isPresented: $isPresented) {
                                        ALLiO_News_Comment_View()
                                    }
                                })
                                .padding(.trailing, 32)
                            }
                        }
                        .padding(.horizontal, 32)
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup {
                    Image(systemName: "newspaper.fill")
                        
                    Text("News")
                        .padding(90)
                        .font(.system(size: 25))
                    
                    NavigationLink {
                        ALLiO_Search_News_View()
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .padding(.trailing, 16)
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

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
    @State private var isPresentedComment: Bool = false
    @State private var isPresentedShare: Bool = false
    
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
                                .padding()
                            }
                            
                            Image("Instagram-apk")
                                .resizable()
                                .frame(width: 350, height: 330)
                                .padding()
                            
                            HStack (spacing: 60) {
                                Button {
                                    if let postIndex = postPictures.firstIndex(
                                        where: { $0.id == post.id }
                                    ) {
                                        postPictures[postIndex].didTap.toggle()
                                    }
                                } label: {
                                    Image(systemName: post.didTap ? "heart.fill" : "heart")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .tint(Color.red)
                                }
                                
                                Button {
                                    self.isPresentedComment.toggle()
                                } label: {
                                    Image(systemName: "message")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .tint(Color.red)
                                        .sheet(isPresented: $isPresentedComment) {
                                            ALLiOPicturesCommentView()
                                        }
                                }
                                
                                Button{
                                    self.isPresentedShare.toggle()
                                } label: {
                                    Image(systemName: "paperplane.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .tint(Color.red)
                                        .sheet(isPresented: $isPresentedShare) {
                                            ALLiOPicturesShareView()
                                        }
                                }
                            }
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup{
                        HStack{
                            NavigationLink {
                                //notofications
                            } label: {
                                Image(systemName: "heart")
                            }
                            
                            NavigationLink {
                                //DM
                            } label: {
                                Image(systemName: "paperplane.fill")
                            }

                        }
                }
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    HStack (spacing: 60){
                        NavigationLink {
                            ALLiO_Pictures_Main_View()
                        } label: {
                            Image(systemName: "house")
                        }
                        
                        NavigationLink {
                            //search
                        } label: {
                            Image(systemName: "magnifyingglass")
                        }

                        NavigationLink {
                            //add
                        } label: {
                            Image(systemName: "plus")
                        }
                        
                        NavigationLink {
                            //myProfile
                        } label: {
                            Image(systemName: "person.circle")
                        }
                    }
                }
            }
            .navigationTitle("Pictures")
        }
        .tint(Color.black)
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


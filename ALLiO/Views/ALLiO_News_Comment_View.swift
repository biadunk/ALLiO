//
//  ALLiO_News_Comment_View.swift
//  ALLiO
//
//  Created by Kacper Biaduń on 18/09/2023.
//

import SwiftUI

struct ALLiO_News_Comment_View: View {
    @State private var comment_News: String = ""
    var body: some View {
        NavigationView {
            VStack{
                List{ //comments list
                    HStack{
                        VStack{
                            NavigationLink(destination: ALLiO_News_Profile_View()) {
                                Image(systemName: "person")
                            }
                            .padding(25)
                            NavigationLink(destination: ALLiO_News_Profile_View()) {
                                Text("Username")
                        }
                        }
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500")
                            .frame(alignment: .center)
                    }
                    
                    HStack{
                        TextField(
                            "Comment post",
                            text: $comment_News
                        )
                        Button {
                            //post comment
                        } label: {
                            Image(systemName: "paperplane.fill")
                        }
                        .foregroundColor(Color.cyan)
                    }
                }
            }
        }
    }
}

struct ALLiO_News_Comment_View_Previews: PreviewProvider {
    static var previews: some View {
        ALLiO_News_Comment_View()
    }
}

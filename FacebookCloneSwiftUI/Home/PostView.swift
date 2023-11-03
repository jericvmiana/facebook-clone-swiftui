//
//  PostView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(MockData().randomProfileImage)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                VStack(alignment: .leading, spacing: 5) {
                    Text(MockData().randomName)
                        .font(.system(size: 15, weight: .semibold))
                    HStack(spacing: 5) {
                        Text(MockData().randomHourValue)
                            .font(.system(size: 13))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 2, height: 2)
                        Image(systemName: "globe.americas.fill")
                            .resizable()
                            .frame(width: 11, height: 11)
                    }
                    .foregroundStyle(.gray)
                }
                
                Spacer()
                HStack(spacing: 20) {
                  
                    Image(systemName: "ellipsis")
                        .resizable()
                        .frame(width: 20, height: 4)
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 10, height: 10)
                }
            }
            .foregroundStyle(.gray)
            .padding(10)
            
            Image(MockData().randomImage)
                .resizable()
                .frame(height: 350)

            HStack {
                Button {
                } label: {
                    Image(systemName: "hand.thumbsup")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Like")
                        .font(.system(size: 13, weight: .semibold))
                }
                
                Spacer()
                Button {
                } label: {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Comment")
                        .font(.system(size: 13, weight: .semibold))
                }
            

                Spacer()
                Button {
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Send")
                        .font(.system(size: 13, weight: .semibold))
                }
            }
            .foregroundStyle(.gray)
            .padding([.leading, .trailing], 30)
            .padding([.top, .bottom], 10)
            
            Color.gray.opacity(0.3)
                .frame(height: 5)
        }
    }
}

#Preview {
    PostView()
}

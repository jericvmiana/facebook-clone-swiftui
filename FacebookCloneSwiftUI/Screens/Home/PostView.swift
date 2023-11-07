//
//  PostView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct PostView: View {
    private let image = MockData().randomPostImage
    private let caption = MockData().randomPostCaption
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Image(MockData().randomImage)
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
                HStack(spacing: 10) {
                    Button("", systemImage: "ellipsis") {
                        
                    }
                    .frame(width: 30, height: 30)

                    Button("", systemImage: "xmark") {
                        
                    }
                    .frame(width: 30, height: 30)
                }
                .foregroundStyle(.black.opacity(0.6))
            }
            .padding([.top, .leading, .bottom], 10)
            .padding(.trailing, 5)
            
            VStack(alignment: .leading) {
                if !caption.isEmpty {
                    Text(caption)
                        .font(.subheadline)
                        .padding([.leading, .trailing])
                        .padding(.bottom, 5)
                }
                
                if !image.isEmpty {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: 350)
                        .clipped()
                }
            }

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

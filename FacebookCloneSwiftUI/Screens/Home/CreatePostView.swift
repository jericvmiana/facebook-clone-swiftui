//
//  CreatePostView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct CreatePostView: View {
    var body: some View {
        HStack {
            Image(MockData().randomProfileImage)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(.circle)
            Text("What's on your mind?")
                .font(.system(size: 15))
            Spacer()
            Image(systemName: "photo.fill.on.rectangle.fill")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundStyle(.green)
        }
        .padding([.top, .leading, .trailing])
        .padding(.bottom, 5)
        
        Color.gray.opacity(0.3)
            .frame(height: 5)
    }
}

#Preview {
    CreatePostView()
}

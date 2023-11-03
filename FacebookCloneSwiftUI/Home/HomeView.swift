//
//  HomeView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                CreatePostView()
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { _ in
                            ReelsView()
                        }
                    }
                }
                .contentMargins(10, for: .scrollContent)
                .scrollIndicators(.hidden)
               
                Color.gray.opacity(0.3)
                    .frame(height: 5)
                
                ForEach(0..<10) { _ in
                    PostView()
                }
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("facebook")
                        .bold()
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 20) {
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black)
                        Image(systemName: "message")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

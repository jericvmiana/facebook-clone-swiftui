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
                HStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 40, height: 40)
                    Text("What's on your mind?")
                    Spacer()
                    Image(systemName: "photo.fill.on.rectangle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.green)
                }
                .padding()
                
                Color.gray.opacity(0.5)
                    .frame(height: 7)
                
                ScrollView(.horizontal) {
                    ZStack(alignment: .leading) {
                        Color.green
                            .clipShape(.rect(cornerRadius: 7))

                        VStack(alignment: .leading) {
                            Circle()
                                .fill(.blue)
                                .frame(width: 30, height: 30)
                            Spacer()
                            Text("Jeric Miana")
                                .font(.footnote)
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                        }
                        .padding(7)
                    }
                    .frame(width: 100, height: 180)
                }
                .contentMargins(10, for: .scrollContent)
                .scrollIndicators(.hidden)

                Color.gray.opacity(0.5)
                    .frame(height: 7)
                
                VStack {
                    HStack(spacing: 10) {
                        Circle()
                            .fill(.blue)
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Jeric Miana")
                                .font(.system(size: 14, weight: .semibold))
                            HStack(spacing: 5) {
                                Text("3h")
                                    .font(.system(size: 11))
                                Image(systemName: "globe.americas.fill")
                                    .resizable()
                                    .frame(width: 11, height: 11)
                            }
                            
                        }
                        
                        Spacer()
                        HStack(spacing: 15) {
                          
                            Image(systemName: "ellipsis")
                                .resizable()
                                .frame(width: 25, height: 5)
                                .foregroundStyle(.gray)
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(10)
                    Color.green
                        .frame(height: 350)
                    
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
                    HStack {
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

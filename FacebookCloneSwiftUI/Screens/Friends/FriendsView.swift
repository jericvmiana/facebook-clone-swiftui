//
//  FriendsView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct HeaderButton {
    let title: String
    let backgroundColor: Color
    let foregroundColor: Color
}

struct FriendsView: View {
    
    private let headerButtons = [
        HeaderButton(title: "Suggestion", backgroundColor: .gray, foregroundColor: .black.opacity(0.7)),
        HeaderButton(title: "Your friends", backgroundColor: .gray, foregroundColor: .black.opacity(0.7)),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                HeaderCategoriesView(headerButtons: headerButtons)
                
                Divider()
                
                HStack {
                    Text("Friend requests")
                        .font(.system(size: 20, weight: .bold))
                        
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("See all")
                            .font(.system(size: 15))
                            .foregroundStyle(.blue)
                    }
                }
                .padding([.top, .bottom], 5)
                .padding([.leading, .trailing])
                
                ForEach(0..<10) { _ in
                    FriendRequestCell()
                }
                
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Friends")
                        .bold()
                        .font(.largeTitle)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("", systemImage: "magnifyingglass") {
                        
                    }
                    .tint(.black)
                }
            }
        }
    }
}

#Preview {
    FriendsView()
}

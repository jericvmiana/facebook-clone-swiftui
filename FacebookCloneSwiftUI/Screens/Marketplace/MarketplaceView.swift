//
//  MarketplaceView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/4/23.
//

import SwiftUI

struct MarketplaceView: View {
    private let headerButtons = [
        HeaderButton(title: "Suggestion", backgroundColor: .gray, foregroundColor: .black.opacity(0.7)),
        HeaderButton(title: "Your friends", backgroundColor: .gray, foregroundColor: .black.opacity(0.7)),
    ]
    
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        NavigationStack {
            ScrollView {
                HeaderCategoriesView(headerButtons: headerButtons)
                HStack {
                    Text("Today's pick")
                        .bold()
                        .foregroundStyle(.primary)
                    Spacer()
                    Button(action: {}) {
                        HStack {
                            Text("Las Piñas")
                                .font(.subheadline)
                            Image(systemName: "location.north.circle.fill")
                        }
                    }
                }
                .padding([.leading, .trailing])
                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(0..<10) { _ in
                        MarketProductCell()
                    }
                }
                .padding()
            }
            .scrollIndicators(.hidden)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Marketplace")
                        .bold()
                        .font(.largeTitle)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "person.fill")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                        }
                    }
                    .foregroundStyle(.primary)
                }
            }
        }
    }
}

#Preview {
    MarketplaceView()
}

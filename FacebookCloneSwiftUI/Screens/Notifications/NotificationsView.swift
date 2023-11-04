//
//  NotificationsView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/4/23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("New")
                        .font(.system(size: 15, weight: .bold))
                        .padding([.leading, .top])
                        .padding(.bottom, 5)
                    ForEach(0..<10) { _ in
                        NotificationCell()
                            .background(.blue.opacity(0.2))
                    }
                }
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Notifications")
                        .bold()
                        .font(.largeTitle)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "gear")
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
    NotificationsView()
}

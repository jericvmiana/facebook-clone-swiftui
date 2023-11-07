//
//  GroupShortcuts.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/6/23.
//

import SwiftUI

struct GroupShortcuts: View {
    var body: some View {
        
        Text("Your shortcuts")
            .font(.system(size: 14, weight: .semibold))
            .padding(.leading)
            .offset(y: 10)
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                ForEach(0..<10) { _ in
                    VStack(alignment: .leading, spacing: 10) {
                        ZStack(alignment: .bottomTrailing) {
                            Image(MockData().randomImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .clipShape(.rect(cornerRadius: 7))
                            
                            Image(MockData().randomImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .clipShape(.circle)
                                .overlay {
                                    Circle()
                                        .stroke(.white, lineWidth: 2)
                                }
                                .offset(x: 5, y: 5)
                        }
                        Text(MockData().randomGroupName)
                            .font(.system(size: 12))
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .contentMargins(10, for: .scrollContent)
    }
}

#Preview {
    GroupShortcuts()
}

//
//  AllShortcuts.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/6/23.
//

import SwiftUI

struct AllShortcuts: View {
    
    private let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 12), count: 2)
    
    var body: some View {
        Text("All shortcuts")
            .font(.system(size: 14, weight: .semibold))
            .padding(.leading)
        LazyVGrid(columns: columns) {
            ForEach(MockData().shortcuts) { shortcut in
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Image(systemName: shortcut.icon)
                                .foregroundStyle(.teal.gradient)
                            Text(shortcut.name)
                                .font(.system(size: 15, weight: .semibold))
                                .lineLimit(1)
                        }
                        Spacer()
                    }
                }
                .padding([.bottom, .top], 15)
                .padding([.leading, .trailing])
                .frame(maxWidth: .infinity)
                .background(.white)
                .clipShape(.rect(cornerRadius: 7))
                .shadow(color: .gray.opacity(0.4), radius: 2)
            }
            .padding([.bottom], 3)
        }
        .padding([.leading, .trailing])
    }
}

#Preview {
    AllShortcuts()
}

//
//  HeaderCategoriesView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/4/23.
//

import SwiftUI

struct HeaderCategoriesView: View {
    var headerButtons: [HeaderButton] = []
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(headerButtons, id: \.title) { headerButton in
                    Button {
                        
                    } label: {
                        Text(headerButton.title)
                            .font(.system(size: 15, weight: .semibold))
                            .padding([.leading, .trailing])
                            .padding([.top, .bottom], 10)
                            .foregroundStyle(headerButton.foregroundColor)
                            .background(
                                Capsule()
                                    .fill(headerButton.backgroundColor.opacity(0.15))
                            )
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .contentMargins(10, for: .scrollContent)
    }
}

#Preview {
    HeaderCategoriesView()
}

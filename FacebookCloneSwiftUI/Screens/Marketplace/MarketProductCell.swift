//
//  MarketProductCell.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/4/23.
//

import SwiftUI

struct MarketProductCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(MockData().randomImage)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .clipShape(.rect(cornerRadius: 7))
            Text(MockData().randomPrice)
                .font(.system(.subheadline, weight: .semibold))
                .lineLimit(1)
            Text(MockData().description)
                .font(.system(.subheadline))
                .lineLimit(2)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    MarketProductCell()
}

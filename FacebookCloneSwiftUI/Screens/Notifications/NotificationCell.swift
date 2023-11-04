//
//  NotificationCell.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/4/23.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {
                Image(MockData().randomImage)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(.circle)
                VStack(alignment: .leading) {
                    Text(MockData().randomName)
                        .font(.subheadline)
                        .bold()
                    Text(MockData().randomCaption)
                        .font(.subheadline)
                        .lineLimit(2)
                    Text(MockData().randomHourValue)
                        .font(.system(size: 12))
                        .foregroundStyle(.secondary)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                    
                }
                .frame(width: 30, height: 30)
                .foregroundStyle(.primary)
            }
        }
        .padding([.top, .bottom], 7)
        .padding([.leading, .trailing], 10)
    }
}

#Preview {
    NotificationCell()
}

//
//  FriendRequestCell.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct FriendRequestCell: View {
    var body: some View {
        HStack {
            Image(MockData().randomImage)
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(.circle)
                .overlay {
                    Circle()
                        .stroke(.gray, lineWidth: 0.3)
                }
            VStack {
                HStack {
                    Text(MockData().randomName)
                        .font(.system(size: 16, weight: .semibold))
                    Spacer()
                    Text(MockData().randomHourValue)
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
                HStack(spacing: 0) {
                    Image(MockData().randomImage)
                        .resizable()
                        .frame(width: 15, height: 15)
                        .clipShape(.circle)
                        .zIndex(1)
                    Image(MockData().randomImage)
                        .resizable()
                        .frame(width: 15, height: 15)
                        .clipShape(.circle)
                        .offset(x: -5)
                    Text("10 mutual friends")
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                    Spacer()
                }
                
                HStack(spacing: 10) {
                    Button {
                        
                    } label: {
                        Text("Confirm")
                            .font(.system(size: 15, weight: .semibold))
                            .padding([.top, .bottom], 10)
                            .frame(maxWidth: .infinity)
                    }
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 7))
                    
                    Button {
                        
                    } label: {
                        Text("Delete")
                            .font(.system(size: 15, weight: .semibold))
                            .padding([.top, .bottom], 10)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .background(.gray.opacity(0.3))
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 7))

                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding([.leading, .trailing])
        .padding([.top, .bottom], 5)
    }
}

#Preview {
    FriendRequestCell()
}

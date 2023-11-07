//
//  MenuHeader.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/6/23.
//

import SwiftUI

struct MenuHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(MockData().randomProfileImage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(.circle)
                Text(MockData().randomName)
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.down.circle.fill")
                        .tint(.gray)
                }
            }
            .padding()
            
            Button("Create new profile", systemImage: "plus.circle.fill") {
                
            }
            .font(.system(size: 15))
            .tint(.gray)
            .padding([.leading, .bottom])
            
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 7))
        .padding([.leading, .top, .trailing])

    }
}

#Preview {
    MenuHeader()
}

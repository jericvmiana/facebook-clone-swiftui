//
//  ReelsView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct ReelsView: View {
    var body: some View {
            ZStack(alignment: .leading) {
                Image(MockData().randomImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .clipShape(.rect(cornerRadius: 7))

                VStack(alignment: .leading) {
                    Image(MockData().randomImage)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(.circle)
                    Spacer()
                    Text(MockData().randomName)
                        .font(.footnote)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                .padding(7)
            }
            .frame(width: 100, height: 180)   
    }
}

#Preview {
    ReelsView()
}

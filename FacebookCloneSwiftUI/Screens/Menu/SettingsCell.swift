//
//  SettingsCell.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/6/23.
//

import SwiftUI

struct SettingsCell: View {
    
    var dataModel: ButtonModel
    var body: some View {
        VStack {
            Divider()
            HStack {
                Button(action: {}) {
                    Image(systemName: dataModel.icon)
                        .foregroundStyle(.teal.gradient)
                    Text(dataModel.name)
                        .font(.subheadline)
                    Spacer()
                    Image(systemName: "chevron.down")
                }
                .foregroundStyle(.primary)
            }
            .padding([.top, .bottom], 5)
            .padding([.leading, .trailing], 20)
        }
    }
}

#Preview {
    SettingsCell(dataModel: ButtonModel(name: "Button", icon: "button.programmable"))
}

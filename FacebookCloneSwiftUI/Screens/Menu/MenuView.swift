//
//  MenuView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/4/23.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    MenuHeader()
                    GroupShortcuts()
                    AllShortcuts()
                    
                    Button {
                    } label: {
                        Text("See more")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(10)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.12))
                    .foregroundStyle(.primary)
                    .clipShape(.rect(cornerRadius: 7))
                    .padding([.leading, .trailing])
                    
                    
                    ForEach(MockData().settings) { dataModel in
                        SettingsCell(dataModel: dataModel)
                    }
                        
                    Button {
                    } label: {
                        Text("Logout")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(10)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.12))
                    .foregroundStyle(.primary)
                    .clipShape(.rect(cornerRadius: 7))
                    .padding([.leading, .trailing])
                    
                }
            }
            .background(.gray.opacity(0.1))
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
    MenuView()
}

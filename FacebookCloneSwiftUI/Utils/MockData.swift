//
//  MockData.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import Foundation

struct MockData {
    var randomImage: String {
        let images = ["bike", "church", "cinema", "desert", "dog", "dollars", "house", "jobstreet", "linkedin", "macbook", "museum", "plant", "road", "robot", "steak", "tokyo", "trees"]
        return images.randomElement()!
    }
    
    var randomName: String {
        let strings = ["Steve Jobs", "Paul Hudson", "Sean Allen", "XCode", "React Native", "Flutter", "NextJS", "Netflix", "Instagram", "Spotify", "TikTok"]
        return strings.randomElement()!
    }
    
    var randomGroupName: String {
        let groups = ["XCode", "SwiftUI", "Swift", "Apple", "WWDC 2023"]
        return groups.randomElement()!
    }
    
    var shortcuts: [ButtonModel] {
        return [
            ButtonModel(name: "Groups", icon: "person.3.sequence.fill"),
            ButtonModel(name: "Feeds", icon: "printer.dotmatrix.fill"),
            ButtonModel(name: "Friends", icon: "person.2.fill"),
            ButtonModel(name: "Explore People", icon: "person.2.fill"),
            ButtonModel(name: "Marketplace", icon: "storefront.fill"),
            ButtonModel(name: "Video", icon: "video.circle.fill"),
            ButtonModel(name: "Memories", icon: "memories.badge.plus"),
            ButtonModel(name: "Saved", icon: "bookmark.fill"),
            ButtonModel(name: "Professional dashboard", icon: "chart.bar.xaxis"),
            ButtonModel(name: "Creator Support", icon: "person.circle.fill"),
            ButtonModel(name: "Pages", icon: "flag.fill"),
            ButtonModel(name: "Ad Center", icon: "horn.fill"),
            ButtonModel(name: "Events", icon: "calendar.circle.fill"),
            ButtonModel(name: "Reels", icon: "scissors"),
        ]
    }
    
    var settings: [ButtonModel] {
        return [
            ButtonModel(name: "Settings & privacy", icon: "gearshape.fill"),
            ButtonModel(name: "Help & support", icon: "questionmark.circle.fill"),
            ButtonModel(name: "Display & accessibility", icon: "moon.circle.fill"),
        ]
    }
    
    var description: String {
        let descriptions = [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        ]
        return descriptions.randomElement()!
    }
    
    var randomPostCaption: String {
        let captions = [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            "",
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur..",
            ""
        ]
        return captions.randomElement()!
    }
    
    var randomPostImage: String {
        let images = ["bike", "church", "", "cinema", "desert", "dog", "house", "plant", "", "road", "steak", "tokyo", "trees", ""]
        return images.randomElement()!
    }
    
    var randomPrice: String {
        let prices = ["P1,000", "P1,500", "P2,000", "P2,500", "P3,000", "P3,500", "P4,000", "P4,500"]
        return prices.randomElement()!
    }
    
    var randomHourValue: String {
        let hours = ["1h", "2h", "3h", "4h", "5h", "6h"]
        return hours.randomElement()!
    }
}

struct ButtonModel: Identifiable {
    var id = UUID()
    let name: String
    let icon: String
}

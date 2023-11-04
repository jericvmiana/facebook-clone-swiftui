//
//  MockData.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import Foundation

struct MockData {
    var randomImage: String {
        let images = ["church", "cinema", "desert", "plant", "road", "steak", "tokyo", "trees"]
        return images.randomElement()!
    }
    
    var randomProfileImage: String {
        let images = ["steve-jobs", "sean-allen", "paul-hudson", "xcode", "react"]
        return images.randomElement()!
    }
    
    var randomName: String {
        let strings = ["Steve Jobs", "Paul Hudson", "Sean Allen", "XCode", "React"]
        return strings.randomElement()!
    }
    
    var randomGroupName: String {
        let groups = ["XCode", "SwiftUI", "Swift", "Apple", "WWDC 2023"]
        return groups.randomElement()!
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
        let images = ["church", "", "cinema", "desert", "plant", "", "road", "steak", "tokyo", "trees", ""]
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

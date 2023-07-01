//
//  TabItem.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 30/06/2023.
//

import Foundation
import TabBar

enum Item: Int, Tabbable {
    case first = 0
    case second
    case third
    
    var icon: String {
        switch self {
            case .first: return "person.crop.circle"  // Name of icon of first item.
            case .second: return "globe.americas.fill" // Name of icon of second item.
            case .third: return "video.circle" // Name of icon of second item.
        
        }
    }
    
    var title: String {
        switch self {
            case .first: return "Characters" // Title of first item.
            case .second: return "Planets" // Title of second item.
            case .third: return "Episodes" // Title of second item.
        }
    }
}

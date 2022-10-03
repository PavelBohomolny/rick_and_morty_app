//
//  Extension.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//

import Foundation
import SwiftUI

extension String {
    
    func stats() -> Color {
        
        var color = Color.clear
        
        switch self {
        case "Alive":
            color = .green
        case "Dead":
            color = .red
        case "unknown":
            color = .orange
        default:
            color = Color.clear
        }
        return color
    }
    
    func spec() -> Color {
        
        var color = Color.clear
        
        switch self {
        case "Human":
            color = .blue
        default:
            color = .brown
        }
        return color
    }
    
    func gndr() -> Color {
        
        var color = Color.clear
        
        switch self {
        case "Male":
            color = .cyan
        case "unknown":
            color = .black
        case "Female":
            color = .pink
        default:
            color = Color.clear
        }
        return color
    }
    
}

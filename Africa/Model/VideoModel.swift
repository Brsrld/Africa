//
//  VideoModel.swift
//  Africa
//
//  Created by Baris Saraldi on 18.08.2021.
//

import Foundation


struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var tumbnail: String {
        "video-\(id)"
    }
}

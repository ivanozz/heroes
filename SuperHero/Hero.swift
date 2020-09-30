//
//  Hero.swift
//  SuperHero
//
//  Created by admin on 30.09.2020.
//

import Foundation

struct Hero: Codable, Identifiable {
    let id: Int
    let name: String
    let images: Images?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case images
    }
}

struct Images: Codable {
    let large: String
    enum CodingKeys: String, CodingKey {
        case large = "lg"
    }
}

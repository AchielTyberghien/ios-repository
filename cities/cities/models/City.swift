//
//  City.swift
//  Examen1
//
//  Created by Dirk Hostens on 16/01/2024.
//

import Foundation

struct City: Codable, Hashable {
    let name: String
    let description: String
    let attractions: [Attraction]
}

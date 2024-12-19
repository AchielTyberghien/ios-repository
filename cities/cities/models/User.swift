//
//  User.swift
//  Examen1
//
//  Created by Dirk Hostens on 18/12/2023.
//

import Foundation

struct User: Codable, Hashable {
    var username: String
    var firstName: String
    var lastName: String
    var password: String
    var role: String?
}

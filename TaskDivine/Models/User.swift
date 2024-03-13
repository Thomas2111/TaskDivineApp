//
//  User.swift
//  TaskDivine
//
//  Created by Tomass Tel on 12/03/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

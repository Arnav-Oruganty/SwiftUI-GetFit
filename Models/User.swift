//
//  User.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation

struct User: Codable, Identifiable, Equatable, Observable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    var profilePic: String
}

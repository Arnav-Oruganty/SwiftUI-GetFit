//
//  Weight.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation

struct Weight: Identifiable, Codable {
    var id = UUID()
    let date: Date
    let weight: Double
}

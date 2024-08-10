//
//  Progress.swift
//  GetFit
//
//  Created by Arnav Oruganty on 02/08/24.
//

import Foundation

struct Progress: Identifiable, Codable, Observable {
    let id: String
    var workouts: Int
    var points: Int
    var calories: Int
    var time: Int
}

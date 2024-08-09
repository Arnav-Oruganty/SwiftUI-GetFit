//
//  Workout.swift
//  GetFit
//
//  Created by Arnav Oruganty on 31/07/24.
//

import Foundation

struct WorkoutDetails: Identifiable {
    let id: Int
    let workout: String
    let videoId: String
    let repetitions: String
    let instruction: String
    let muscles: [String]
    let calories: Int
    let points: Int
    let time: Int
}

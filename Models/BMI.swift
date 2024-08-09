//
//  BMI.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation

struct BMI {
    var weight: Double
    var heightInCm: Double

    var value: Double? {
        guard weight > 0, heightInCm > 0 else { return nil }
        let heightInMeters = heightInCm / 100
        return weight / (heightInMeters * heightInMeters)
    }
    
    var category: String {
        guard let bmi = value else { return "Invalid" }
        switch bmi {
        case ..<18.5:
            return "Underweight"
        case 18.5..<24.9:
            return "Normal weight"
        case 25..<29.9:
            return "Overweight"
        default:
            return "Obesity"
        }
    }
}

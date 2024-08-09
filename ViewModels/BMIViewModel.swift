//
//  BMIViewModel.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import SwiftUI
import Combine

class BMIViewModel: ObservableObject {
    let userId: String
    @Published var weight: String = ""
    @Published var heightInCm: String = ""
    
    @Published var bmiValue: String = ""
    @Published var bmiCategory: String = ""
    
    init(userId: String) {
        self.userId = userId
    }
    
    func calculateBMI() {
        guard let weight = Double(weight), weight > 0,
              let heightInCm = Double(heightInCm), heightInCm > 0 else {
            bmiValue = ""
            bmiCategory = ""
            return
        }
        
        let bmi = BMI(weight: weight, heightInCm: heightInCm)
        bmiValue = bmi.value.map { String(format: "%.1f", $0) } ?? ""
        bmiCategory = bmi.category
    }
}


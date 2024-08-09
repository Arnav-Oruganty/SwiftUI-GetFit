//
//  WorkoutCompletionManager.swift
//  GetFit
//
//  Created by Arnav Oruganty on 31/07/24.
//
import Foundation

class WorkoutCompletionManager: ObservableObject {
    @Published var completedWorkouts: [Int: Bool] = [:] {
        didSet {
            saveCompletedWorkouts()
        }
    }

    private var userDefaultsKey: String

    init(userId: String, exerciseType: String) {
        self.userDefaultsKey = "completedWorkouts_\(userId)_\(exerciseType)"
        loadCompletedWorkouts()
    }

    func isWorkoutCompleted(id: Int) -> Bool {
        return completedWorkouts[id] ?? false
    }

    func markWorkoutCompleted(id: Int) {
        completedWorkouts[id] = true
    }

    private func saveCompletedWorkouts() {
        if let data = try? JSONEncoder().encode(completedWorkouts) {
            UserDefaults.standard.set(data, forKey: userDefaultsKey)
        }
    }

    private func loadCompletedWorkouts() {
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
           let decoded = try? JSONDecoder().decode([Int: Bool].self, from: data) {
            completedWorkouts = decoded
        }
    }
}

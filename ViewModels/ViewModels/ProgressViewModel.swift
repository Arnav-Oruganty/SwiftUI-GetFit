//
//  ProgressViewModel.swift
//  GetFit
//
//  Created by Arnav Oruganty on 03/08/24.
//

import Foundation

class ProgressViewModel: ObservableObject {
    @Published var progress: Progress

    init(userId: String) {
        self.progress = Progress(id: userId, workouts: 0, points: 0, calories: 0, time: 0)
        loadProgress(for: userId)
    }

    private func saveProgress() {
        guard let data = try? JSONEncoder().encode(progress) else {
            print("Failed to encode progress")
            return
        }
        UserDefaults.standard.set(data, forKey: progress.id)
    }

    private func loadProgress(for userId: String) {
        guard let data = UserDefaults.standard.data(forKey: userId),
              let savedProgress = try? JSONDecoder().decode(Progress.self, from: data) else {
            print("No progress data found for user \(userId)")
            return
        }
        self.progress = savedProgress
    }

    func updateProgress(workouts: Int, points: Int, calories: Int, time: Int) {
        self.progress.workouts += workouts
        self.progress.points += points
        self.progress.calories += calories
        self.progress.time += time

        saveProgress()
    }
}

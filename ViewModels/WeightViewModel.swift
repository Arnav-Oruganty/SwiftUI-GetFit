//
//  WeightViewModel.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation
import SwiftUI

class WeightViewModel: ObservableObject {
    @Published var entries: [Weight] = []
    private var userId: String
    private var entriesKey: String { "entries_\(userId)" }

    init(userId: String) {
        self.userId = userId
        loadEntries()
    }

    func addEntry(date: Date, weight: Double) {
        let newEntry = Weight(date: date, weight: weight)
        entries.append(newEntry)
        saveEntries()
    }

    private func saveEntries() {
        do {
            let data = try JSONEncoder().encode(entries)
            UserDefaults.standard.set(data, forKey: entriesKey)
        } catch {
            print("Failed to save entries: \(error.localizedDescription)")
        }
    }
    
    private func loadEntries() {
        guard let data = UserDefaults.standard.data(forKey: entriesKey) else { return }
        do {
            entries = try JSONDecoder().decode([Weight].self, from: data)
        } catch {
            print("Failed to load entries: \(error.localizedDescription)")
        }
    }
}


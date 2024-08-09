//
//  IntermediateChallengesView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 01/08/24.
//

import SwiftUI

struct IntermediateChallengesView: View {
    @State private var showSheet = false
    @State private var selectedWorkout: Workout?
    @ObservedObject var completionManager: WorkoutCompletionManager
    @EnvironmentObject var progressViewModel: ProgressViewModel
    
    var workouts = [
        Workout(id: 0, name: "Burpees", symbol: "1.circle"),
        Workout(id: 1, name: "Military Push-ups", symbol: "2.circle"),
        Workout(id: 2, name: "Push-up & Rotation", symbol: "3.circle"),
        Workout(id: 3, name: "Floor Tricep Dips", symbol: "4.circle"),
        Workout(id: 4, name: "Staggered Push-ups", symbol: "5.circle"),
        Workout(id: 5, name: "Wide Arm Push-ups", symbol: "6.circle"),
        Workout(id: 6, name: "Tricep Kickbacks", symbol: "7.circle"),
        Workout(id: 7, name: "Swimmer and Superman", symbol: "8.circle"),
        Workout(id: 8, name: "Sumo Sqauts", symbol: "9.circle"),
        Workout(id: 9, name: "Reverse Flutter Kicks", symbol: "10.circle"),
        Workout(id: 10, name: "Wall Sit", symbol: "11.circle"),
        Workout(id: 11, name: "Bicycle Crunches", symbol: "12.circle"),
        Workout(id: 12, name: "Side Plank Right", symbol: "13.circle"),
        Workout(id: 13, name: "Side Plank Left", symbol: "14.circle"),
        Workout(id: 14, name: "Plank", symbol: "15.circle")
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("10 points for each workout.")
                    .font(.title2)
                    .padding(.leading)
                
                ScrollView {
                    ForEach(workouts, id: \.id) { workout in
                        Button(action: {
                            selectedWorkout = workout
                            showSheet = true
                        }) {
                            WorkoutCardView(
                                workoutModel: workout,
                                completed: Binding(
                                    get: { completionManager.isWorkoutCompleted(id: workout.id) },
                                    set: { completed in
                                        if completed {
                                            completionManager.markWorkoutCompleted(id: workout.id)
                                        }
                                    }
                                )
                            )
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(.black.opacity(0.05))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        .sheet(isPresented: $showSheet) {
                            if let selectedWorkout = selectedWorkout {
                                if let workoutDetails = IntermediateChallengesData.getDetails(for: selectedWorkout.id) {
                                    WorkoutDetailsView(
                                        workoutDetailsModel: workoutDetails,
                                        showSheet: $showSheet,
                                        completed: Binding(
                                            get: { completionManager.isWorkoutCompleted(id: selectedWorkout.id) },
                                            set: { completed in
                                                if completed {
                                                    completionManager.markWorkoutCompleted(id: selectedWorkout.id)
                                                }
                                            }
                                        ),
                                        completionManager: completionManager,
                                        progressViewModel: progressViewModel
                                    )
                                } else {
                                    Text("Workout details not found")
                                }
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Intermediate Challenge")
        }
    }
}

#Preview {
    IntermediateChallengesView(completionManager: WorkoutCompletionManager(userId: "abc123", exerciseType: "Intermediate Challenge"))
        .environmentObject(ProgressViewModel(userId: "abc123"))
}

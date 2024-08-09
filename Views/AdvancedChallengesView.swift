//
//  AdvancedChallengesView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 01/08/24.
//

import SwiftUI

struct AdvancedChallengesView: View {
    @State private var showSheet = false
    @State private var selectedWorkout: Workout?
    @ObservedObject var completionManager: WorkoutCompletionManager
    @EnvironmentObject var progressViewModel: ProgressViewModel
    
    var workouts = [
        Workout(id: 0, name: "Diamond Push-ups", symbol: "1.circle"),
        Workout(id: 1, name: "Spiderman Push-ups", symbol: "2.circle"),
        Workout(id: 2, name: "Decline Push-ups", symbol: "3.circle"),
        Workout(id: 3, name: "Hindu Push-ups", symbol: "4.circle"),
        Workout(id: 4, name: "Reverse Push-ups", symbol: "5.circle"),
        Workout(id: 5, name: "Supine Push-ups", symbol: "6.circle"),
        Workout(id: 6, name: "Floor Y Raises", symbol: "7.circle"),
        Workout(id: 7, name: "Curtsy Lunges", symbol: "8.circle"),
        Workout(id: 8, name: "Jumping Squats", symbol: "9.circle"),
        Workout(id: 9, name: "Glute Kick Back Left", symbol: "10.circle"),
        Workout(id: 10, name: "Glute Kick Back Right", symbol: "11.circle"),
        Workout(id: 11, name: "Side Leg Circles Right", symbol: "12.circle"),
        Workout(id: 12, name: "Side Leg Circles Left", symbol: "13.circle"),
        Workout(id: 13, name: "V-up", symbol: "14.circle"),
        Workout(id: 14, name: "Butt Bridge", symbol: "15.circle"),
        Workout(id: 15, name: "Side Bridges Left", symbol: "16.circle"),
        Workout(id: 16, name: "Side Bridges Right", symbol: "17.circle"),
        Workout(id: 17, name: "Side Plank Left", symbol: "18.circle"),
        Workout(id: 18, name: "Side Plank Right", symbol: "19.circle"),
        Workout(id: 19, name: "Plank", symbol: "20.circle")
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("20 points for each workout.")
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
                                if let workoutDetails = AdvancedChallengesData.getDetails(for: selectedWorkout.id) {
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
            .navigationTitle("Advanced Challenge")
        }
    }
}

#Preview {
    AdvancedChallengesView(completionManager: WorkoutCompletionManager(userId: "abc123", exerciseType: "Advanced Challenge"))
        .environmentObject(ProgressViewModel(userId: "abc123"))
}

//
//  WorkoutDetailsView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 24/07/24.
//

import SwiftUI

struct WorkoutDetailsView: View {
    @State var workoutDetailsModel: WorkoutDetails
    @Binding var showSheet: Bool
    @Binding var completed: Bool
    @ObservedObject var completionManager: WorkoutCompletionManager
    @ObservedObject var progressViewModel: ProgressViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text(workoutDetailsModel.workout)
                        .font(.largeTitle)
                        .bold()
                    
                    WorkoutVideoView(Id: workoutDetailsModel.videoId)
                        .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading, spacing: 30) {
                        HStack {
                            if ["Plank", "Side Plank Right", "Side Plank Left", "Wall Sit", "Chest Stretch"].contains(workoutDetailsModel.workout) {
                                Text("Duration")
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(.blue)
                            } else {
                                Text("Repetitions")
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(.blue)
                            }
                            
                            Spacer()
                            
                            Text(workoutDetailsModel.repetitions)
                                .font(.title)
                                .bold()
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Focus Areas")
                                .font(.title)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            LazyVGrid(columns: Array(repeating: GridItem(spacing: 30), count: 2)) {
                                ForEach(workoutDetailsModel.muscles, id: \.self) { muscle in
                                    Text(muscle)
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 55)
                                        .background(.white.opacity(0.1))
                                        .clipShape(Capsule())
                                }
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Instructions")
                                .font(.title)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            Text(workoutDetailsModel.instruction)
                                .font(.title2)
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            showSheet = false
                        }) {
                            Text("Cancel")
                                .padding()
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .background(.white.opacity(0.1))
                                .clipShape(.capsule)
                        }
                        
                        Button(action: {
                            completed = true
                            
                            progressViewModel.updateProgress(
                                workouts: 1,
                                points: workoutDetailsModel.points,
                                calories: workoutDetailsModel.calories, 
                                time: workoutDetailsModel.time
                            )
                            
                            completionManager.markWorkoutCompleted(id: workoutDetailsModel.id)
                            
                            showSheet = false
                        }) {
                            Text("Completed")
                                .padding()
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .clipShape(.capsule)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    WorkoutDetailsView(
        workoutDetailsModel: WorkoutDetails(
            id: 0,
            workout: "Jumping Jacks",
            videoId: "2W4ZNSwoW_4",
            repetitions: "x20",
            instruction: """
            Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead.
            Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.
            """,
            muscles: ["Shoulders", "Quadriceps", "Adductors", "Glutes", "Calves", "Chest"],
            calories: 6,
            points: 5,
            time: 60
        ),
        showSheet: .constant(true),
        completed: .constant(false),
        completionManager: WorkoutCompletionManager(userId: "abc123", exerciseType: "Basic Workout"), 
        progressViewModel: ProgressViewModel(userId: "abc123")
    )
}

//
//  IntermediateWorkoutData.swift
//  GetFit
//
//  Created by Arnav Oruganty on 26/07/24.
//

import Foundation

struct IntermediateWorkoutData {
    static let details: [Int: WorkoutDetails] = [
        0: WorkoutDetails(
            id: 0,
            workout: "Burpees",
            videoId: "818SkLAPyKY",
            repetitions: "x15",
            instruction: "Stand with your feet should width apart, then put your hands on the ground and kick your feet backward. Do a quick push-up and then jump up.",
            muscles: ["Chest" , "Abs" , "Glutes" , "Quadriceps" , "Hamstrings" , "Shoulders" , "Triceps" , "Calves"],
            calories: 9,
            points: 10,
            time: 60
        ),
        1: WorkoutDetails(
            id: 1,
            workout: "Military Push-ups",
            videoId: "H8LoGZ-ZN48",
            repetitions: "x12",
            instruction: """
            Start in a push-up position with your hands directly under your shoulders and feet no more than 12 inches apart.
            
            Bend your elbows and lower your body until your upper arms are parallel to the floor.
            
            Stay in this position for one second and then push your body back to the starting position and repeat the exercise. Please remember that your elbows should be close to your body during this exercise.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 9,
            points: 10,
            time: 60
        ),
        2: WorkoutDetails(
            id: 2,
            workout: "Push-up & Rotation",
            videoId: "Plv5CIclPtQ",
            repetitions: "x14",
            instruction: """
            Start in the regular push-up position. Then go down for a push-up and as you come up, rotate your upper body and extend your right arm upwards.
            
            Repeat the exercise with the other arm. It's a great exercise for the chest, shoulders, arms and core.
            """,
            muscles: ["Chest", "Abs", "Shoulders", "Triceps" , "Glutes"],
            calories: 9,
            points: 10,
            time: 60
        ),
        3: WorkoutDetails(
            id: 3,
            workout: "Floor Tricep Dips",
            videoId: "geNkbcZ6qDo",
            repetitions: "x12",
            instruction: """
            Sit on the floor with your knees bent and feet flat on the floor. Put your hands beneath your shoulders with your fingers pointing towards your hips.
            
            Lift your hips off the floor. Then bend and extend your elbow to lower and lift your hips.
            """,
            muscles: ["Triceps" , "Chest" , "Shoulders" , "Back"],
            calories: 9,
            points: 10,
            time: 60
        ),
        4: WorkoutDetails(
            id: 4,
            workout: "Incline Push-ups",
            videoId: "3WUUeM07i_Q",
            repetitions: "x20",
            instruction: """
            Start in the regular push-up position but with your hands elevated on a chair or bench.
            
            Then push your body up down using your arm strength.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 9,
            points: 10,
            time: 60
        ),
        5: WorkoutDetails(
            id: 5,
            workout: "Hover Push-ups",
            videoId: "6wdVoBSkU0Y",
            repetitions: "x12",
            instruction: """
            Start in a push-up position. Lower yourself; shift your body to the left and then to the right.
            
            Push your body up and repeat the exercise.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 9,
            points: 10,
            time: 60
        ),
        6: WorkoutDetails(
            id: 6,
            workout: "Sumo Sqauts",
            videoId: "Z2F0bArQH5s",
            repetitions: "x20",
            instruction: """
            Stand with your feet 6-12 inches apart. Stretch your arms in front of you.
            
            Lower your body until your thighs are parallel to the floor. Return to the starting position and repeat the exercise.
            """,
            muscles: ["Glutes" , "Quadriceps", "Adductors", "Hamstrings" , "Calves"],
            calories: 9,
            points: 10,
            time: 60
        ),
        7: WorkoutDetails(
            id: 7,
            workout: "Reverse Flutter Kicks",
            videoId: "UsO66ZUvzb0",
            repetitions: "x20",
            instruction: """
            Lie face down on a bench, place your butt on the edge of the bench and hold on to the sides.
            
            Then lift your legs until they are level with your upper body. Lift one leg higher than the other, then switch to the other leg and repeat.
            """,
            muscles: ["Glutes" , "Hamstrings"],
            calories: 9,
            points: 10,
            time: 60
        ),
        8: WorkoutDetails(
            id: 8,
            workout: "Wall Sit",
            videoId: "Yp3ZwACK9v4",
            repetitions: "30s",
            instruction: """
            Stand with your back against the wall, then slide down until your knees are at a 90 degree angle.
            
            Keep your back against the wall with your hands and arms away from your legs. Hold the position.
            """,
            muscles: ["Glutes" , "Quadriceps" , "Hamstrings" , "Calves"],
            calories: 9,
            points: 10,
            time: 30
        ),
        9: WorkoutDetails(
            id: 9,
            workout: "Crossover Crunch",
            videoId: "q2_KHKE5CDE",
            repetitions: "x20",
            instruction: """
            Lie on your back with your knees bent and your hands behind your ears.
            
            Raise and twist your torso so your right elbow moves to meet your left knee. Repeat with the other side.
            """,
            muscles: ["Abs" , "Glutes" , "Quadriceps"],
            calories: 9,
            points: 10,
            time: 40
        ),
        10: WorkoutDetails(
            id: 10,
            workout: "Bicycle Crunches",
            videoId: "-nJkAJpQemI",
            repetitions: "x20",
            instruction: """
            Lie on the floor with your hands behind your ears. Raise your knees and close your right elbow towards your left knee, then close your left elbow towards your right knee. Repeat the exercise.
            """,
            muscles: ["Abs" , "Glutes" , "Quadriceps"],
            calories: 9,
            points: 10,
            time: 40
        ),
        11: WorkoutDetails(
            id: 11,
            workout: "Side Plank Right",
            videoId: "2W96p2PIoPg",
            repetitions: "30s",
            instruction: """
            Lie on your right side with your forearm supporting your body. Hold your body in a straight line.
            
            This exercise targets the abdominal muscles and obliques.
            """,
            muscles: ["Abs"],
            calories: 9,
            points: 10,
            time: 30
        ),
        12: WorkoutDetails(
            id: 12,
            workout: "Side Plank Left",
            videoId: "2W96p2PIoPg",
            repetitions: "30s",
            instruction: """
            Lie on your left side with your forearm supporting your body. Hold your body in a straight line.
            
            This exercise targets the abdominal muscles and obliques.
            """,
            muscles: ["Abs"],
            calories: 9,
            points: 10,
            time: 30
        ),
        13: WorkoutDetails(
            id: 13,
            workout: "Plank",
            videoId: "Fcbw82ykBvY",
            repetitions: "90s",
            instruction: """
            Lie on the floor with your toes and forearms on the ground. Keep your body straight and hold this position as long as you can.
            
            Don't hold your breadth. Breathe normally from your abdomen instead of your chest.
            """,
            muscles: ["Abs" , "Shoulders" , "Glutes"],
            calories: 9,
            points: 10,
            time: 90
        )
    ]
    
    static func getDetails(for id: Int) -> WorkoutDetails? {
        return details[id]
    }
}

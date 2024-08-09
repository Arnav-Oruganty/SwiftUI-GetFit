//
//  AdvancedWorkoutData.swift
//  GetFit
//
//  Created by Arnav Oruganty on 26/07/24.
//

import Foundation

struct AdvancedWorkoutData {
    static let details: [Int: WorkoutDetails] = [
        0: WorkoutDetails(
            id: 0,
            workout: "Diamond Push-ups",
            videoId: "UCmqw3kKZ38",
            repetitions: "x15",
            instruction: """
            Start in the push-up position. Make a diamond shape with your forefingers and thumbs together under your chest.
            
            Then push your body up and down. Remember to keep your body straight.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 12,
            points: 20,
            time: 60
        ),
        1: WorkoutDetails(
            id: 1,
            workout: "Spiderman Push-ups",
            videoId: "YmonBKorAIw",
            repetitions: "x20",
            instruction: """
            Start in the regular push-up position. When lowering your torso downward, bend and lift one leg to the side.
            
            Then return to the start position and switch to the other leg.
            
            Remember to keep your body straight.
            """,
            muscles: ["Chest", "Glutes", "Abs", "Triceps", "Shoulders"],
            calories: 12,
            points: 20,
            time: 60
        ),
        2: WorkoutDetails(
            id: 2,
            workout: "Decline Push-ups",
            videoId: "OjPfLfLsw3c",
            repetitions: "x15",
            instruction: """
            Start on all fours with your knees under your butt and hands under your shoulders.
            
            Then elevate your feet on a chair or bench, and push your body up and down mainly using your arm strength.
            
            Remember to keep your body straight.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 12,
            points: 20,
            time: 45
        ),
        3: WorkoutDetails(
            id: 3,
            workout: "Hindu Push-ups",
            videoId: "HE0ijmUc6Og",
            repetitions: "x15",
            instruction: """
            Start with your hands and feet touching the floor, body bent and butt up in an upside down 'V' shape. Then bring your elbows to bring your body towards the floor.
            
            When your body is close to the floor, raise your upper body up as far as possible. Then return to the original position and repeat.
            """,
            muscles: ["Lower back" , "Chest" , "Triceps" , "Glutes" , "Hamstrings" , "Calves" , "Shoulders"],
            calories: 12,
            points: 20,
            time: 60
        ),
        4: WorkoutDetails(
            id: 4,
            workout: "Pike Push-ups",
            videoId: "Q2koXI9jphI",
            repetitions: "x15",
            instruction: """
            Start with your hands and feet on the floor. Put your hands shoulder width apart. Bend your body, and lift your hips in an upside down 'V' shape.
            
            Bend your elbows, and bring your head close to the floor. Push your body back, and repeat the exercise.
            """,
            muscles: ["Shoulders", "Chest", "Triceps"],
            calories: 12,
            points: 20,
            time: 45
        ),
        5: WorkoutDetails(
            id: 5,
            workout: "Inchworms",
            videoId: "ZY2ji_Ho0dA",
            repetitions: "x20",
            instruction: """
            Start with your feet shoulder width apart.
            
            Bend your body and walk your hands in front of you as far as you can, then walk your hands back. Repeat the exercise
            """,
            muscles: ["Abs" , "Chest" , "Triceps" , "Glutes" , "Quadriceps" , "Hamstrings" , "Traps" , "Shoulders"],
            calories: 12,
            points: 20,
            time: 60
        ),
        6: WorkoutDetails(
            id: 6,
            workout: "Hyperextension",
            videoId: "W9y8xq4Ya_E",
            repetitions: "x15",
            instruction: """
            Lie down on your stomach with your toes touching the floor, and your chin on your hand.
            
            Raise your chest up as high as possible off the floor. Hold this position for a few seconds and then go back to the start position.
            
            Repeat this exercise.
            """,
            muscles: ["Lower back", "Glutes"],
            calories: 12,
            points: 20,
            time: 60
        ),
        7: WorkoutDetails(
            id: 7,
            workout: "Curtsy Lunges",
            videoId: "-rTyKlHjYT8",
            repetitions: "x30",
            instruction: """
            Stand straight up. Then step back with your left leg to the right, and bend your knees at the same time.
            
            Go back to the start position and switch to the other side.
            """,
            muscles: ["Quadriceps" , "Glutes" , "Adductors" , "Hamstrings" , "Calves"],
            calories: 12,
            points: 20,
            time: 60
        ),
        8: WorkoutDetails(
            id: 8,
            workout: "Jumping Squats",
            videoId: "txLE-jOCEsc",
            repetitions: "x30",
            instruction: """
            Start in the squat position, then jump up using your abdominal muscles for strength. This exercise works your abdomen.
            """,
            muscles: ["Glutes" , "Quadriceps" , "Hamstrings" , "Calves"],
            calories: 12,
            points: 20,
            time: 60
        ),
        9: WorkoutDetails(
            id: 9,
            workout: "Glute Kick Back Left",
            videoId: "D4gxkgZQkAg",
            repetitions: "x20",
            instruction: """
            Start on all fours with your knees under your butt and your hands directly under your shoulders.
            
            Then kick the left leg back until its parallel with the ground.
            """,
            muscles: ["Glutes" , "Hamstrings"],
            calories: 12,
            points: 20,
            time: 40
        ),
        10: WorkoutDetails(
            id: 10,
            workout: "Glute Kick Back Right",
            videoId: "D4gxkgZQkAg",
            repetitions: "x20",
            instruction: """
            Start on all fours with your knees under your butt and your hands directly under your shoulders.
            
            Then kick the right leg back until its parallel with the ground.
            """,
            muscles: ["Glutes" , "Hamstrings"],
            calories: 12,
            points: 20,
            time: 40
        ),
        11: WorkoutDetails(
            id: 11,
            workout: "V-up",
            videoId: "5kvKmRGADlQ",
            repetitions: "x20",
            instruction: """
            Lie on your back with your arms and legs extended and your legs squeezed together.
            
            Raise your upper body and legs, use your arms to touch your toes, then go back to the start position and repeat the exercise.
            """,
            muscles: ["Abs" , "Quadriceps"],
            calories: 12,
            points: 20,
            time: 40
        ),
        12: WorkoutDetails(
            id: 12,
            workout: "Butt Bridge",
            videoId: "9qo48CYN06w",
            repetitions: "x30",
            instruction: """
            Lie on your back with your knees bent and feet flat on the floor. Put your arms flat at your sides.
            
            Then lift your butt up and down.
            """,
            muscles: ["Glutes" , "Hamstrings"],
            calories: 12,
            points: 20,
            time: 60
        ),
        13: WorkoutDetails(
            id: 13,
            workout: "Russian Twist",
            videoId: "DJQGX2J4IVw",
            repetitions: "x50",
            instruction: """
            Sit on the floor with your knees bent, feet lifted a little bit and back tilted backwards.
            
            Then hold your hands together and twist from side to side.
            """,
            muscles: ["Abs"],
            calories: 12,
            points: 20,
            time: 50
        ),
        14: WorkoutDetails(
            id: 14,
            workout: "Plank",
            videoId: "Fcbw82ykBvY",
            repetitions: "180s",
            instruction: """
            Lie on the floor with your toes and forearms on the ground. Keep your body straight and hold this position as long as you can.
            
            Don't hold your breadth. Breathe normally from your abdomen instead of your chest.
            """,
            muscles: ["Abs" , "Shoulders" , "Glutes"],
            calories: 12,
            points: 20,
            time: 180
        )
    ]
    
    static func getDetails(for id: Int) -> WorkoutDetails? {
        return details[id]
    }
}



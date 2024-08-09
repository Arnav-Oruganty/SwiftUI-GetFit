//
//  AdvancedChallengesData.swift
//  GetFit
//
//  Created by Arnav Oruganty on 01/08/24.
//

import Foundation

struct AdvancedChallengesData {
    static let details: [Int: WorkoutDetails] = [
        0: WorkoutDetails(
            id: 0,
            workout: "Diamond Push-ups",
            videoId: "UCmqw3kKZ38",
            repetitions: "x20",
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
            repetitions: "x30",
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
            repetitions: "x20",
            instruction: """
            Start on all fours with your knees under your butt and hands under your shoulders.
            
            Then elevate your feet on a chair or bench, and push your body up and down mainly using your arm strength.
            
            Remember to keep your body straight.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 12,
            points: 20,
            time: 60
        ),
        3: WorkoutDetails(
            id: 3,
            workout: "Hindu Push-ups",
            videoId: "HE0ijmUc6Og",
            repetitions: "x25",
            instruction: """
            Start with your hands and feet touching the floor, body bent and butt up in an upside down 'V' shape. Then bring your elbows to bring your body towards the floor.
            
            When your body is close to the floor, raise your upper body up as far as possible. Then return to the original position and repeat.
            """,
            muscles: ["Lower back" , "Chest" , "Triceps" , "Glutes" , "Hamstrings" , "Calves" , "Shoulders"],
            calories: 12,
            points: 20,
            time: 75
        ),
        4: WorkoutDetails(
            id: 4,
            workout: "Reverse Push-ups",
            videoId: "XRpbVcpx-Yc",
            repetitions: "x20",
            instruction: """
            Start in the regular push-up position.
            
            Lower your body down, then bend your knees and move your hips backward with your arms straight.
            
            Go back to the push-up position and repeat.
            """,
            muscles: ["Chest", "Shoulders", "Back", "Traps", "Biceps"],
            calories: 12,
            points: 20,
            time: 60
        ),
        5: WorkoutDetails(
            id: 5,
            workout: "Supine Push-ups",
            videoId: "WwbgPb9Gb48",
            repetitions: "x20",
            instruction: """
            Lie on your backwith your feet flat on the floor and your arms bent on two sides.
            
            Push your chest up as far as you can, and then slowly go back to the start position.
            
            Repeat the exercise.
            """,
            muscles: ["Back", "Traps", "Shoulders"],
            calories: 12,
            points: 20,
            time: 60
        ),
        6: WorkoutDetails(
            id: 6,
            workout: "Floor Y Raises",
            videoId: "lUGi7NilqWA",
            repetitions: "x20",
            instruction: """
            Lie face down on the floor with your arms fully extended and your thumbs pointing up, your body should be in the shape of the letter 'Y'.
            
            Raise your arms off the ground as far as you can and pause them at the top for 2 seconds. Slowly go back to the start position, and repeat the exercise.
            """,
            muscles: ["Shoulders", "Traps"],
            calories: 12,
            points: 20,
            time: 40
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
            workout: "Side Leg Circles Right",
            videoId: "VgysBPnVJWg",
            repetitions: "x25",
            instruction: """
            Lie on your left side with your head resting on your left hand.
            
            Then lift your right leg and rotate your foot in circles.
            """,
            muscles: ["Glutes" , "Adductors"],
            calories: 12,
            points: 20,
            time: 50
        ),
        12: WorkoutDetails(
            id: 12,
            workout: "Side Leg Circles Left",
            videoId: "VgysBPnVJWg",
            repetitions: "x25",
            instruction: """
            Lie on your right side with your head resting on your right hand.
            
            Then lift your left leg and rotate your foot in circles.
            """,
            muscles: ["Glutes" , "Adductors"],
            calories: 12,
            points: 20,
            time: 50
        ),
        13: WorkoutDetails(
            id: 13,
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
        14: WorkoutDetails(
            id: 14,
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
        15: WorkoutDetails(
            id: 15,
            workout: "Side Bridges Left",
            videoId: "7ytbYd4CK3o",
            repetitions: "x30",
            instruction: """
            Lie on your right side. Put your right elbow directly under your shoulders and put your left hand on your waist. Place your left leg on your right leg.
            
            Raise your hips upward, hold for 2-4 seconds, then go back to the start position.
            
            Repeat this exercise.
            """,
            muscles: ["Abs"],
            calories: 12,
            points: 20,
            time: 60
        ),
        16: WorkoutDetails(
            id: 16,
            workout: "Side Bridges Right",
            videoId: "7ytbYd4CK3o",
            repetitions: "x30",
            instruction: """
            Lie on your left side. Put your left elbow directly under your shoulders and put your right hand on your waist. Place your right leg on your left leg.

            Raise your hips upward, hold for 2-4 seconds, then go back to the start position.

            Repeat this exercise.
            """,
            muscles: ["Abs"],
            calories: 12,
            points: 20,
            time: 60
        ),
        17: WorkoutDetails(
            id: 17,
            workout: "Side Plank Left",
            videoId: "2W96p2PIoPg",
            repetitions: "90s",
            instruction: """
            Lie on your left side with your forearm supporting your body. Hold your body in a straight line.
            
            This exercise targets the abdominal muscles and obliques.
            """,
            muscles: ["Abs"],
            calories: 12,
            points: 20,
            time: 90
        ),
        18: WorkoutDetails(
            id: 18,
            workout: "Side Plank Right",
            videoId: "2W96p2PIoPg",
            repetitions: "90s",
            instruction: """
            Lie on your right side with your forearm supporting your body. Hold your body in a straight line.
            
            This exercise targets the abdominal muscles and obliques.
            """,
            muscles: ["Abs"],
            calories: 12,
            points: 20,
            time: 90
        ),
        19: WorkoutDetails(
            id: 19,
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

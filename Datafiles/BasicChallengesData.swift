//
//  BasicChallengesData.swift
//  GetFit
//
//  Created by Arnav Oruganty on 01/08/24.
//

import Foundation

struct BasicChallengesData {
    static let details: [Int: WorkoutDetails] = [
        0: WorkoutDetails(
            id: 0,
            workout: "Jumping Jacks",
            videoId: "2W4ZNSwoW_4",
            repetitions: "x50",
            instruction: """
            Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead.
            
            Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.
            """,
            muscles: ["Shoulders" , "Quadriceps" , "Adductors" , "Glutes" , "Calves" , "Chest"],
            calories: 6,
            points: 5,
            time: 50
        ),
        1: WorkoutDetails(
            id: 1,
            workout: "Push-ups",
            videoId: "R08gYyypGto",
            repetitions: "x20",
            instruction: """
            Lay prone on the ground with arms supporting your body. Keep your body straight while raising and lowering your body with your arms.
            
            This exercise works the chest, shoulders, triceps, back and legs.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 6,
            points: 5,
            time: 60
        ),
        2: WorkoutDetails(
            id: 2,
            workout: "Incline Push-ups",
            videoId: "3WUUeM07i_Q",
            repetitions: "x20",
            instruction: """
            Start in the regular push-up position but with your hands elevated on a chair or bench.
            
            Then push your body up and down using your arm strength.
            
            Remember to keep your body straight.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 6,
            points: 5,
            time: 60
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
            calories: 6,
            points: 5,
            time: 60
        ),
        4: WorkoutDetails(
            id: 4,
            workout: "Prone Triceps Push-ups",
            videoId: "Rr43jMaoJ9g",
            repetitions: "x15",
            instruction: """
            Lie on your stomach with your hands underneath your shoulders and your elbows bent.
            
            Slightly raise your chest up, and then go back to the start position.
            
            Repeat this exercise
            """,
            muscles: ["Triceps", "Chest", "Shoulders"],
            calories: 6,
            points: 5,
            time: 45
        ),
        5: WorkoutDetails(
            id: 5,
            workout: "Reclined Rhomboid Squeeze",
            videoId: "olv2Sv9DwmA",
            repetitions: "x20",
            instruction: """
            Sit with your knees bent. Slightly lean your upper body back.
            
            Stretch your arms in front of you, then pull your elbows at a 90 degree angle and squeeze your shoulder blades.
            """,
            muscles: ["Shoulders" , "Abs" , "Back" , "Traps"],
            calories: 6,
            points: 5,
            time: 60
        ),
        6: WorkoutDetails(
            id: 6,
            workout: "Sqauts",
            videoId: "42bFodPahBU",
            repetitions: "x20",
            instruction: """
            Stand with your feet shoulder wide apart and your arms stretched forward, then lower your body until your thighs are parallel with the floor.
            
            Your knees should be extended in the same direction as your toes. Return to the start position and do the next rep.
            """,
            muscles: ["Glutes" , "Quadriceps" , "Hamstrings" , "Calves"],
            calories: 6,
            points: 5,
            time: 60
        ),
        7: WorkoutDetails(
            id: 7,
            workout: "Donkey Kick Left",
            videoId: "4ranVQDqlaU",
            repetitions: "x20",
            instruction: """
            Start on all fours with your knees under your butt and your hands under your shoulders.
            
            Then lift your left leg and squeeze your butt as much as you can. Go back to the start position and repeat the exercise.
            """,
            muscles: ["Glutes"],
            calories: 6,
            points: 5,
            time: 40
        ),
        8: WorkoutDetails(
            id: 8,
            workout: "Donkey Kick Right",
            videoId: "4ranVQDqlaU",
            repetitions: "x20",
            instruction: """
            Start on all fours with your knees under your butt and your hands under your shoulders.
                
            Then lift your right leg and squeeze your butt as much as you can. Go back to the start position and repeat the exercise.
            """,
            muscles: ["Glutes"],
            calories: 6,
            points: 5,
            time: 40
        ),
        9: WorkoutDetails(
            id: 9,
            workout: "Lunges",
            videoId: "1J8mVmtyYpk",
            repetitions: "x30",
            instruction: """
            Stand with your feet shoulder width apart and your hands on your hips.
            
            Take a step forward with your right leg and lower your body until your right thigh is parallel with the floor. Then return and switch to the other leg.
            """,
            muscles: ["Glutes" , "Quadriceps" , "Hamstrings" , "Calves"],
            calories: 6,
            points: 5,
            time: 60
        ),
        10: WorkoutDetails(
            id: 10,
            workout: "Wall Calf Raises",
            videoId: "GQa_N7wft7M",
            repetitions: "x20",
            instruction: """
            Stand straight with your hands on the wall and feet shoulder width apart.
            
            Lift your heels and stand on your toes. Then drop your heels down. Repeat the exercise.
            """,
            muscles: ["Calves"],
            calories: 6,
            points: 5,
            time: 60
        ),
        11: WorkoutDetails(
            id: 11,
            workout: "Abdominal Crunches",
            videoId: "RUNrHkbP4Pc",
            repetitions: "x20",
            instruction: """
            Lie on your back with your knees bent and your arms stretched forward. Then lift your upper body off the floor. Hold it for a few seconds and slowly return.
            
            It primarily works the rectus abdominis muscle and the obliques.
            """,
            muscles: ["Abs"],
            calories: 6,
            points: 5,
            time: 60
        ),
        12: WorkoutDetails(
            id: 12,
            workout: "Mountain Climber",
            videoId: "wQq3ybaLZeA",
            repetitions: "x20",
            instruction: """
            Start in the push-up position. Bend your right knee towards your chest and keep your left leg straight, then quickly switch from one leg to the other.
            
            This exercise strenthens multiple muscle groups.
            """,
            muscles: ["Abs" , "Glutes" , "Lower back" , "Quadriceps" , "Calves"],
            calories: 6,
            points: 5,
            time: 60
        ),
        13: WorkoutDetails(
            id: 13,
            workout: "Diagonal Plank",
            videoId: "OGfFtF-dhrk",
            repetitions: "x30",
            instruction: """
            Start in the straight arm plank position.
            
            Lift your right arm and left leg until they are parallel with the ground.
            
            Return to the start position and repeat with the other side.
            """,
            muscles: ["Abs" , "Glutes", "Quadriceps", "Hamstrings" , "Back"],
            calories: 6,
            points: 5,
            time: 60
        ),
        14: WorkoutDetails(
            id: 14,
            workout: "Plank",
            videoId: "Fcbw82ykBvY",
            repetitions: "60s",
            instruction: """
            Lie on the floor with your toes and forearms on the ground. Keep your body straight and hold this position as long as you can.
            
            Don't hold your breadth. Breathe normally from your abdomen instead of your chest.
            """,
            muscles: ["Abs" , "Shoulders" , "Glutes"],
            calories: 6,
            points: 5,
            time: 60
        )
    ]
    
    static func getDetails(for id: Int) -> WorkoutDetails? {
        return details[id]
    }
}

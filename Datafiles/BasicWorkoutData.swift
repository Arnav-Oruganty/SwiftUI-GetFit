//
//  WorkoutData.swift
//  GetFit
//
//  Created by Arnav Oruganty on 25/07/24.
//

import Foundation

struct BasicWorkoutData {
    static let details: [Int: WorkoutDetails] = [
        0: WorkoutDetails(
            id: 0,
            workout: "Jumping Jacks",
            videoId: "2W4ZNSwoW_4",
            repetitions: "x20",
            instruction: """
            Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead.
            
            Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.
            """,
            muscles: ["Shoulders" , "Quadriceps" , "Adductors" , "Glutes" , "Calves" , "Chest"],
            calories: 6,
            points: 5,
            time: 20
        ),
        1: WorkoutDetails(
            id: 1,
            workout: "Push-ups",
            videoId: "R08gYyypGto",
            repetitions: "x10",
            instruction: """
            Lay prone on the ground with arms supporting your body. Keep your body straight while raising and lowering your body with your arms.
            
            This exercise works the chest, shoulders, triceps, back and legs.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 6,
            points: 5,
            time: 30
        ),
        2: WorkoutDetails(
            id: 2,
            workout: "Wide Arm Push-ups",
            videoId: "pQUsUHvyoI0",
            repetitions: "x10",
            instruction: """
            Start in the regular push-up position but with your hands spread wider than your shoulders.
            
            Then push your body up and down. Remember to keep your body straight.
            """,
            muscles: ["Chest", "Triceps", "Shoulders"],
            calories: 6,
            points: 5,
            time: 30
        ),
        3: WorkoutDetails(
            id: 3,
            workout: "Chest Stretch",
            videoId: "NS64IgKUyeY",
            repetitions: "30s",
            instruction: """
            Find a doorway, take a lunge position in the doorway with your arms on the doorframe and your elbows a little lower thank your shoulders, then slowly bring your chest forward.
            
            Hold this position for 30-40 seconds. Then slowly come out of it, bring your arms down and do a couple of shoulder rolls.
            
            Don't pull your head forward, and keep your neck relaxed.
            """,
            muscles: ["Chest" , "Shoulders" , "Biceps" , "Back"],
            calories: 6,
            points: 5,
            time: 30
        ),
        4: WorkoutDetails(
            id: 4,
            workout: "Cat Cow Pose",
            videoId: "w_UKcI1Ftn8",
            repetitions: "x30",
            instruction: """
            Start on all fours with your knees under your butt and your hands directly under your shoulders.
            
            Then take a breadth and make your belly fall down, shoulders roll back and head come up towards the ceiling.
            
            As you exhale, curve your back upward and let your head come down. Repeat the exercise.
            
            Do it slowly with each step of this exercise.
            """,
            muscles: ["Abs" , "Lower back"],
            calories: 6,
            points: 5,
            time: 30
        ),
        5: WorkoutDetails(
            id: 5,
            workout: "Reclined Rhomboid Squeeze",
            videoId: "olv2Sv9DwmA",
            repetitions: "x15",
            instruction: """
            Sit with your knees bent. Slightly lean your upper body back.
            
            Stretch your arms in front of you, then pull your elbows at a 90 degree angle and squeeze your shoulder blades.
            """,
            muscles: ["Shoulders" , "Abs" , "Back" , "Traps"],
            calories: 6,
            points: 5,
            time: 30
        ),
        6: WorkoutDetails(
            id: 6,
            workout: "Sqauts",
            videoId: "42bFodPahBU",
            repetitions: "x12",
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
            workout: "Lunges",
            videoId: "1J8mVmtyYpk",
            repetitions: "x20",
            instruction: """
            Stand with your feet shoulder width apart and your hands on your hips.
            
            Take a step forward with your right leg and lower your body until your right thigh is parallel with the floor. Then return and switch to the other leg.
            """,
            muscles: ["Glutes" , "Quadriceps" , "Hamstrings" , "Calves"],
            calories: 6,
            points: 5,
            time: 60
        ),
        8: WorkoutDetails(
            id: 8,
            workout: "Wall Calf Raises",
            videoId: "GQa_N7wft7M",
            repetitions: "x12",
            instruction: """
            Stand straight with your hands on the wall and feet shoulder width apart.
            
            Lift your heels and stand on your toes. Then drop your heels down. Repeat the exercise.
            """,
            muscles: ["Calves"],
            calories: 6,
            points: 5,
            time: 30
        ),
        9: WorkoutDetails(
            id: 9,
            workout: "Abdominal Crunches",
            videoId: "RUNrHkbP4Pc",
            repetitions: "x16",
            instruction: """
            Lie on your back with your knees bent and your arms stretched forward. Then lift your upper body off the floor. Hold it for a few seconds and slowly return.
            
            It primarily works the rectus abdominis muscle and the obliques.
            """,
            muscles: ["Abs"],
            calories: 6,
            points: 5,
            time: 60
        ),
        10: WorkoutDetails(
            id: 10,
            workout: "Mountain Climber",
            videoId: "wQq3ybaLZeA",
            repetitions: "x16",
            instruction: """
            Start in the push-up position. Bend your right knee towards your chest and keep your left leg straight, then quickly switch from one leg to the other.
            
            This exercise strenthens multiple muscle groups.
            """,
            muscles: ["Abs" , "Glutes" , "Lower back" , "Quadriceps" , "Calves"],
            calories: 6,
            points: 5,
            time: 30
        ),
        11: WorkoutDetails(
            id: 11,
            workout: "Plank",
            videoId: "Fcbw82ykBvY",
            repetitions: "30s",
            instruction: """
            Lie on the floor with your toes and forearms on the ground. Keep your body straight and hold this position as long as you can.
            
            Don't hold your breadth. Breathe normally from your abdomen instead of your chest.
            """,
            muscles: ["Abs" , "Shoulders" , "Glutes"],
            calories: 6,
            points: 5,
            time: 30
        )
    ]
    
    static func getDetails(for id: Int) -> WorkoutDetails? {
        return details[id]
    }
}



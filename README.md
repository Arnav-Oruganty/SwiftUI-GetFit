# GetFit - Workout & Fitness App

##  Track:

App Development

## Problem Statement:
How about a fitness app that turns workouts into an epic adventure? You'll earn experience points for each exercise, and as you level up, you'll unlock new workout challenges and defeat virtual monsters! 

## Introduction:

GetFit is a well-rounded workout app built for iOS devices utilizing SwiftUI, Firebase, and Firestore. It could be the first time you’ve decided to start your fitness journey or are trying to push beyond your limits; GetFit has three different workouts available for you at Basic, Intermediate and Advanced levels. Every level comes with its own set of challenges that become unlocked as one progresses through them thus ensuring that there’s always something new to try out.

To help users keep in line with their health goals, GetFit also features sections for tracking weight, BMI, calories burned, time spent exercising, completed workouts as well as points earned. The app also includes links directing users to some articles on diet and exercises which will throw more light on healthier living choices.

Within the profile view individuals can control their profile image alongside other information such as name and mail address. Regarding user authentication it is securely controlled by Firebase so that the user can create an account by using their name plus email then password hence providing personalized and secure experiences.

## Objective:

GetFit aims to create a planned and reachable fitness experience that is easily adaptable to the user’s improvements. GetFit tries to assist users in conveniently achieving their fitness objectives by giving them various workout levels, tracking their weight and BMI, counting calories and time, and keeping track of progress made in workouts completed as well as points earned. The app also offers educational materials on diet and exercise which are intended to help users stay fit.

## Implementation Details:

To test and run the GetFit app, follow these steps:

* `Install Xcode`:
  * Install Xcode on your mac device from the App Store.
  * To learn more visit [Xcode](https://developer.apple.com/xcode/)

* `Install Simulator`:
  * While installing Xcode, you will get an option to install various simulators on your mac. Please install an `iOS simulator`.
    
* `Firebase Setup`:
  * Follow the steps given in [Firebase](https://firebase.google.com/docs/auth/ios/start)
  * Download the unique `GoogleService-Info.plist file` for this project.
  * Add the GoogleService-Info.plist file to your Xcode project.

* `Project Structure`:
  * Clone this GitHub repository in Xcode.
  * Ensure that all the project files are organized in a single directory.

* `Running the App`:
  * Make sure that you have followed all the previous steps.
  * You can run the app using an `iOS simulator` in Xcode or on a `physical device` that supports `iOS 17.5 or later`.
  * To know how to configure an iOS simulator or to connect a physical device follow the steps given in [Devices](https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device)

* `Installation Time`:
  * Allow the app to install and initialize. Once installation is completed, you're ready to use the app.
 
## Tech Stack:

* Swift
* SwiftUI
* Firebase (for user authentication)
* Firestore (database for user details)

## References:

* I learnt the concept of Swift and SwiftUI from [Hacking With Swift](https://www.hackingwithswift.com/100/swiftui)
* Some other YouTube channels that i followed to learn the concepts of SwiftUI:
  *  [Sean Allen](https://www.youtube.com/@seanallen)
  *  [CodeWithChris](https://www.youtube.com/@CodeWithChris)
* I have taken the workout videos from [Leap Fitness](https://www.youtube.com/@LeapFitnessOfficial)
* I refered [How To Setup & Integrate Firebase to Your iOS App]([How To Setup & Integrate Firebase to Your iOS App](https://www.youtube.com/watch?v=BWK_BdwrB1Y)) to integrate Firebase into my app.
* I learnt the concept of "Email Authentication using Firebase" from this video [Lesson 1: Project Set Up – SwiftUI To Do List](https://www.youtube.com/watch?v=K-4blUReYoU&list=PL5PR3UyfTWvei-pKlZN7d8r-0tHCK1EKE)

## Challenges Faced:

* `Managing State and Environment Variables`: Handling state and environment variables efficiently throughout the app.

* `UI Consistency`: Maintaining a consistent user interface was challenging. Each time a UI design was completed, there was a temptation to revise it for further improvements.

* `Firebase Integration`: Navigating and configuring Firebase for the project was a complex task.

* `Workout Data Retrieval`: Developing a method to fetch and manage workout data effectively.

## Future Scope:

* `Integration with Physical Devices`: Add a pedometer feature by linking the app to physical devices such as the Apple Watch for enhanced fitness tracking.

* `Expanded Workout Tiers`: While the app currently offers Basic, Intermediate, and Advanced tiers, future updates could introduce muscle-focused workout categories.

* `Multi-User Workouts`: Develop a multi-user platform where two or more people can join together for collaborative workout sessions.

* `Paid Features`: Implement additional paid features once the app is hosted, providing users with premium content and functionality.
  
## Conclusion:

GetFit is positioned as an all-encompassing fitness app that offers multiple workout levels with free structured exercises and detailed progress tracking. Using SwiftUI on top of Firebase and Firestore, the app is aimed at making workout management, health tracking and engaging with fitness content a seamless experience all in one application. 

GetFit is now ready to expand and grow. Planned development currently includes physical-device integration (Apple Watch, etc.), in-app purchasing options, and multi-user workout sessions support. The next steps in the roadmap are meant to further enhance GetFit's ability to be more personalized to the user's fitness experience. 

As GetFit grows and becomes capable of added functionality, it should only benefit users and help them achieve their own personal fitness goals, whether that is to become more fit, maintain health, or increase their already healthy lifestyles.

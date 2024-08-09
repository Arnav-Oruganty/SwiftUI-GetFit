# GetFit - Workout & Fitness App

##  Track:

App Development

## Introduction:

GetFit is a comprehensive workout app designed for iOS devices using SwiftUI, Firebase, and Firestore. Whether you're just starting your     
fitness journey or looking to push your limits, GetFit offers three distinct workout levels: Basic, Intermediate, and Advanced. As you 
progress through each level, new challenges unlock, ensuring that your fitness routine stays dynamic and engaging.

To help users stay on track with their health goals, GetFit also includes features to monitor weight, BMI, calories burned, time spent, 
workouts completed, and points earned. Additionally, the app provides curated links to articles on diet and workouts, offering valuable 
insights and tips for a healthier lifestyle.

The profile view allows users to manage their personal information, including their profile picture, name, and email. User authentication is 
securely managed through Firebase, allowing users to create accounts with their name, email, and password, ensuring a personalized and secure 
experience.

## Objective

The objective of GetFit is to provide users with a structured and accessible fitness experience that adapts to their individual progress. By offering tiered workout levels, weight and BMI tracking, calorie and time monitoring, and progress tracking for workouts completed and points earned, GetFit aims to support users in achieving their fitness goals in a convenient and personalized manner. Additionally, the app provides educational resources on diet and exercise to further guide users on their fitness journey.

## Implementation Details

To test and run the GetFit app, follow these steps:

* Firebase Setup:

  * Download the unique GoogleService-Info.plist file from your Firebase console for this project.
  * Add the GoogleService-Info.plist file to your Xcode project.

* Project Structure:

  * Ensure that all the necessary project files are organized in a single directory.

* Running the App:

  * You can run the app using an iOS simulator in Xcode or on a physical device that supports iOS 17.5 or later.

* Installation Time:

  * Allow some time for the app to install and initialize. Once installation is complete, you're ready to use the app.
 
## Tech Stack

* Swift
* SwiftUI
* Firebase (for user authentication)
* Firestore (database for user details)

## Challenges Faced

* Managing State and Environment Variables: Handling state and environment variables efficiently throughout the app.

* UI Consistency: Maintaining a consistent user interface was challenging. Each time a UI design was completed, there was a temptation to revise it for further improvements.

* Firebase Integration: Navigating and configuring Firebase for the project was a complex task.

* Workout Data Retrieval: Developing a method to fetch and manage workout data effectively.

## Future Scope

* Integration with Physical Devices: Add a pedometer feature by linking the app to physical devices such as the Apple Watch for enhanced fitness tracking.

* Expanded Workout Tiers: While the app currently offers Basic, Intermediate, and Advanced tiers, future updates could introduce muscle-focused workout categories.

* Multi-User Workouts: Develop a multi-user platform where two or more people can join together for collaborative workout sessions.

* Paid Features: Implement additional paid features once the app is hosted, providing users with premium content and functionality.
  
## Conclusion

GetFit aims to be a versatile and comprehensive fitness app that meets users' diverse needs through its structured workout levels and detailed progress tracking. With a foundation built on SwiftUI, Firebase, and Firestore, the app provides a seamless experience for managing workouts, tracking health metrics, and engaging with fitness content.

Looking ahead, GetFit is poised for further development. Planned features include integration with physical devices like Apple Watch, options for in-app purchases, and support for multi-user workout sessions. These enhancements will expand the app’s functionality and provide users with an even more personalized and interactive fitness journey.

By continuously evolving and adding new capabilities, GetFit strives to support users in reaching their fitness goals and maintaining a healthy lifestyle.

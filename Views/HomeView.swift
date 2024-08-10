import SwiftUI

struct HomeView: View {
    @StateObject var accountViewModel = AccountViewModel()
    @StateObject var completionManager = WorkoutCompletionManager(userId: "", exerciseType: "Basic Workout")
    @EnvironmentObject var progressViewModel: ProgressViewModel

    @State private var showAlert = false
    @State private var alertMessage = ""
    
    @State private var showWorkoutAlerts = false
    @State private var workoutAlertMessage = ""
    @State private var workoutAlertTitle = ""
    
    let workoutQuotes = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9", "image10"].shuffled()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    if let user = accountViewModel.user {
                        HStack {
                            Spacer()
                            Text("Hi, \(user.name)")
                                .font(.title)
                                .bold()
                        }

                        GeometryReader { geometry in
                            Image(workoutQuotes[0])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width, height: 300)
                                .clipShape(.rect(cornerRadius: 20))
                        }
                        .frame(height: 300)

                        Text("Progress")
                            .font(.title)
                            .bold()

                        LazyVGrid(columns: Array(repeating: GridItem(spacing: 10), count: 2)) {
                            statsCard(icon: "flame.fill", color: .orange, label: "Calories (kcal)", value: "\(progressViewModel.progress.calories)")
                            statsCard(icon: "dumbbell.fill", color: .white, label: "Workouts", value: "\(progressViewModel.progress.workouts)")
                            statsCard(icon: "star.fill", color: .yellow, label: "Points", value: "\(progressViewModel.progress.points)")
                            statsCard(icon: "clock.fill", color: .blue, label: "Time", value: "\(progressViewModel.progress.time) s")
                        }

                        Text("Workouts")
                            .font(.title)
                            .bold()

                        VStack(spacing: 20) {
                            NavigationLink(destination: BasicWorkoutView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Basic Workout"))
                                .environmentObject(progressViewModel)) {
                                    workoutCardEnabled(color1: .yellow, color2: .gray, color3: .gray, label: "BASIC", exercises: "12", start: 0, end: 60)
                            }
                            
                            if (progressViewModel.progress.points >= 135){
                                NavigationLink(destination: IntermediateWorkoutView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Intermediate Workout"))
                                    .environmentObject(progressViewModel)) {
                                        workoutCardEnabled(color1: .yellow, color2: .yellow, color3: .gray, label: "INTERMEDIATE", exercises: "14", start: 135, end: 275)
                                    }
                            } else {
                                Button(action: {
                                    showAlert = true
                                    alertMessage = "Complete the basic challenge to unlock."
                                }) {
                                    workoutCardDisabled(label: "INTERMEDIATE")
                                }
                            }
                            
                            if(progressViewModel.progress.points >= 425) {
                                NavigationLink(destination: AdvancedWorkoutView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Advanced Workout"))
                                    .environmentObject(progressViewModel)) {
                                        workoutCardEnabled(color1: .yellow, color2: .yellow, color3: .yellow, label: "ADVANCED", exercises: "15", start: 425, end: 725)
                                    }
                            } else {
                                Button(action: {
                                    showAlert = true
                                    alertMessage = "Complete the intermediate challenge to unlock."
                                }) {
                                    workoutCardDisabled(label: "ADVANCED")
                                }
                            }
                        }

                        Text("Challenges")
                            .font(.title)
                            .bold()

                        VStack(spacing: 20) {
                            if (progressViewModel.progress.points >= 60) {
                                NavigationLink(destination: BasicChallengesView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Basic Challenge"))
                                    .environmentObject(progressViewModel)) {
                                        workoutCardEnabled(color1: .yellow, color2: .gray, color3: .gray, label: "BASIC", exercises: "15", start: 60, end: 135)
                                    }
                            } else {
                                Button(action: {
                                    showAlert = true
                                    alertMessage = "Complete the basic workouts to unlock."
                                }) {
                                    workoutCardDisabled(label: "BASIC")
                                }
                            }
                            
                            if (progressViewModel.progress.points >= 275) {
                                NavigationLink(destination: IntermediateChallengesView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Intermediate Challenge"))
                                    .environmentObject(progressViewModel)) {
                                        workoutCardEnabled(color1: .yellow, color2: .yellow, color3: .gray, label: "INTERMEDIATE", exercises: "15", start: 275, end: 425)
                                    }
                            } else {
                                Button(action: {
                                    showAlert = true
                                    alertMessage = "Complete the intermediate workouts to unlock."
                                }) {
                                    workoutCardDisabled(label: "INTERMEDIATE")
                                }
                            }
                            
                            if (progressViewModel.progress.points >= 725) {
                                NavigationLink(destination: AdvancedChallengesView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Advanced Challenge"))
                                    .environmentObject(progressViewModel)) {
                                        workoutCardEnabled(color1: .yellow, color2: .yellow, color3: .yellow, label: "ADVANCED", exercises: "20", start: 725, end: 1125)
                                    }
                            } else {
                                Button(action: {
                                    showAlert = true
                                    alertMessage = "Complete the advanced workouts to unlock."
                                }) {
                                    workoutCardDisabled(label: "ADVANCED")
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("GetFit")
            
            .onChange(of: progressViewModel.progress.points) {
                if progressViewModel.progress.points == 60 {
                    workoutAlertTitle = "Basic Workout Completed!"
                    workoutAlertMessage = "Congratulations! You've unlocked the Basic Challenge!"
                    showWorkoutAlerts = true
                } else if progressViewModel.progress.points == 135 {
                    workoutAlertTitle = "Basic Challenge Completed!"
                    workoutAlertMessage = "Congratulations! You've unlocked the Intermediate Workout!"
                    showWorkoutAlerts = true
                } else if progressViewModel.progress.points == 275 {
                    workoutAlertTitle = "Intermediate Workout Completed!"
                    workoutAlertMessage = "Congratulations! You've unlocked the Intermediate Challenge!"
                    showWorkoutAlerts = true
                } else if progressViewModel.progress.points == 425 {
                    workoutAlertTitle = "Intermediate Challenge Completed!"
                    workoutAlertMessage = "Congratulations! You've unlocked the Advanced Workout!"
                    showWorkoutAlerts = true
                } else if progressViewModel.progress.points == 725 {
                    workoutAlertTitle = "Advanced Workout Completed!"
                    workoutAlertMessage = "Congratulations! You've unlocked the Advanced Challenge!"
                    showWorkoutAlerts = true
                } else if progressViewModel.progress.points == 1125 {
                    workoutAlertTitle = "Advanced Challenge Completed!"
                    workoutAlertMessage = "Congratulations! You've completed all the workouts and challenges!"
                    showWorkoutAlerts = true
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Locked!"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
            .alert(isPresented: $showWorkoutAlerts) {
                Alert(title: Text(workoutAlertTitle), message: Text(workoutAlertMessage), dismissButton: .default(Text("OK")))
            }
        }
        .onAppear {
            accountViewModel.fetchUser()
        }
    }

    private func statsCard(icon: String, color: Color, label: String, value: String) -> some View {
        ZStack {
            Color(.white)
                .opacity(0.1)
                .clipShape(.rect(cornerRadius: 20))

            VStack(spacing: 5) {
                HStack {
                    Spacer()
                    Image(systemName: icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundStyle(color)
                    Spacer()
                }
                Text(label)
                    .font(.title2)
                    .bold()
                Text(value)
                    .font(.title2)
                    .bold()
            }
            .padding(.vertical)
        }
    }
    
    private func workoutCardDisabled(label: String) -> some View {
        ZStack {
            HStack {
                Image (systemName: "lock.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white.opacity(0.3))
                
                Spacer()
            }
            .padding()
            
            Text(label)
                .font(.title2)
                .bold()
                .foregroundStyle(.white.opacity(0.3))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 70)
        .background(.white.opacity(0.1))
        .clipShape(.rect(cornerRadius: 20))
    }
    
    private func workoutCardEnabled(color1: Color, color2: Color, color3: Color, label: String, exercises: String, start: Int, end: Int) -> some View {
        ZStack {
            HStack {
                HStack(spacing: 3) {
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15, height: 15)
                        .foregroundStyle(color1)
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15, height: 15)
                        .foregroundStyle(color2)
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15, height: 15)
                        .foregroundStyle(color3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 10, height: 10)
                        .foregroundStyle(.white)
                }
                .padding()
            }
            
            VStack (spacing: 1){
                Text(label)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                
                Text("\(exercises) Exercises")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .background(.white.opacity(0.1))
            .clipShape(.rect(cornerRadius: 20))
            .overlay {
                if (progressViewModel.progress.points >= start && progressViewModel.progress.points < end) {
                    RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 2)
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(ProgressViewModel(userId: "abc123"))
}


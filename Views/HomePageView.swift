//
//  HomePageView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 19/07/24.
//

import SwiftUI

struct HomePageView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            TabView {
                if let user = viewModel.user {
                    HomeView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: ""))
                        .environmentObject(ProgressViewModel(userId: user.id))
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text ("Home")
                                .font(.title3)
                        }
                    
                    ReportView(weightViewModel: WeightViewModel(userId: user.id),
                               bmiViewModel: BMIViewModel(userId: user.id))
                        .tabItem {
                            Image(systemName: "chart.bar.xaxis")
                            Text("Report")
                        }
                    
                    ArticlesView()
                        .tabItem {
                            Image(systemName: "list.bullet.clipboard.fill")
                            Text ("Articles")
                                .font(.title3)
                        }
                    
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }
                }
            }
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    HomePageView()
}

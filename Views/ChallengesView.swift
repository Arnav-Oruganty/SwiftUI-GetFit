//
//  ChallengesView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import SwiftUI

struct ChallengesView: View {
    @StateObject var viewModel = AccountViewModel()
    @EnvironmentObject var progressViewModel: ProgressViewModel
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                if let user = viewModel.user {
                    Spacer()
                    
                    NavigationLink(destination: BasicChallengesView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Basic Challenge"))
                        .environmentObject(progressViewModel)) {
                        Text("BASIC")
                            .font(.title)
                            .bold()
                            .foregroundStyle((progressViewModel.progress.points >= 60) ? Color.black : Color.white.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 85)
                            .background((progressViewModel.progress.points >= 60) ? Color.yellow : Color.white.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 20))
                    }
                        .disabled(!(progressViewModel.progress.points >= 60))
                    
                    NavigationLink(destination: IntermediateChallengesView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Intermediate Challenge"))
                        .environmentObject(progressViewModel)) {
                        Text("INTERMEDIATE")
                            .font(.title)
                            .bold()
                            .foregroundStyle((progressViewModel.progress.points >= 275) ? Color.black : Color.white.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 85)
                            .background((progressViewModel.progress.points >= 275) ? Color.orange : Color.white.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 20))
                    }
                    .disabled(!(progressViewModel.progress.points >= 275))
                    
                    NavigationLink(destination: AdvancedChallengesView(completionManager: WorkoutCompletionManager(userId: user.id, exerciseType: "Advanced Challenge"))
                        .environmentObject(progressViewModel)) {
                        Text("ADVANCED")
                            .font(.title)
                            .bold()
                            .foregroundStyle((progressViewModel.progress.points >= 725) ? Color.black : Color.white.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 85)
                            .background((progressViewModel.progress.points >= 725) ? Color.red : Color.white.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 20))
                    }
                    .disabled(!(progressViewModel.progress.points >= 725))
                }
                
                Spacer()
                Spacer()
                Spacer()
            }
            .padding()
            .navigationTitle("Challenges")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ChallengesView()
}

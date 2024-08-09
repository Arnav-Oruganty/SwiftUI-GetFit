//
//  WorkoutCardView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 24/07/24.
//

import SwiftUI

struct Workout: Identifiable {
    let id: Int
    let name: String
    let symbol: String
}

struct WorkoutCardView: View {
    @State var workoutModel: Workout
    @Binding var completed: Bool
    
    var body: some View {
        ZStack {
            Color(.white)
                .opacity(0.1)
                .clipShape(.rect(cornerRadius: 20))
            
            HStack(spacing: 10) {
                Image(systemName: workoutModel.symbol)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                
                Text(workoutModel.name)
                    .font(.title2)
                    .foregroundStyle(.white)
                
                Spacer()
                
                if completed {
                    Image(systemName: "checkmark.seal.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.green)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    WorkoutCardView(workoutModel: Workout(id: 0, name: "Jumping Jacks", symbol: "1.circle"), completed: .constant(false))
}

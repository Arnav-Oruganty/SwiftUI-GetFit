//
//  BMIEntryView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 22/07/24.
//

import SwiftUI

struct BMIEntryView: View {
    @ObservedObject var viewModel: BMIViewModel
    @Binding var showSheet: Bool
    @FocusState private var isFocused: Bool

    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            
            HStack {
                Text("Weight")
                    .font(.title)
                    .bold()
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                TextField("Enter weight in kg", text: $viewModel.weight)
                    .keyboardType(.decimalPad)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .clipShape(.capsule)
                    .overlay(
                        Capsule().stroke(Color.white.opacity(0.1))
                    )
                    .focused($isFocused)
            }
            
            HStack {
                Text("Height")
                    .font(.title)
                    .bold()
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                TextField("Enter height in cm", text: $viewModel.heightInCm)
                    .keyboardType(.decimalPad)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .clipShape(.capsule)
                    .overlay(
                        Capsule().stroke(Color.white.opacity(0.1))
                    )
                    .focused($isFocused)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    showSheet = false
                }) {
                    Text("Cancel")
                        .padding()
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.1))
                        .clipShape(Capsule())
                }
                
                Spacer()
                
                Button(action: {
                    viewModel.calculateBMI()
                    showSheet = false
                }) {
                    Text("Save")
                        .padding()
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    BMIEntryView(viewModel: BMIViewModel(userId: ""),
                 showSheet: .constant(true))
}

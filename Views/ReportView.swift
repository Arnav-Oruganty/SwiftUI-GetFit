//
//  ReportView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 20/07/24.
//
import SwiftUI

struct ReportView: View {
    @StateObject var weightViewModel: WeightViewModel
    @StateObject var bmiViewModel: BMIViewModel

    @State private var showWeightEntrySheet = false
    @State private var showBMIEntrySheet = false
    
    @State private var animatedProgress = 0.0
    
    let workoutQuotes = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9", "image10"].shuffled()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    GeometryReader { geometry in
                        Image(workoutQuotes[0])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: 300)
                            .clipShape(.rect(cornerRadius: 20))
                    }
                    .frame(height: 300)
                    
                    HStack {
                        Text("Weight")
                            .font(.title)
                            .bold()
                        Spacer()
                        Button(action: {
                            showWeightEntrySheet = true
                        }) {
                            Text("Log")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 40)
                                .background(Color.blue)
                                .clipShape(.rect(cornerRadius: 10))
                        }
                    }
                    .sheet(isPresented: $showWeightEntrySheet) {
                        WeightEntryView(showSheet: $showWeightEntrySheet, viewModel: weightViewModel)
                            .presentationDetents([.medium])
                    }

                    GroupBox {
                        HStack {
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("Heaviest:")
                                    .font(.title3)
                                Text("Lightest:")
                                    .font(.title3)
                            }
                            VStack(alignment: .leading) {
                                if let heaviest = weightViewModel.entries.sorted(by: { $0.weight < $1.weight }).last {
                                    Text(String(format: "%.1f kg", heaviest.weight))
                                        .font(.title3)
                                        .bold()
                                } else {
                                    Text("0.0 kg")
                                        .font(.title3)
                                        .bold()
                                }
                                if let lightest = weightViewModel.entries.sorted(by: { $0.weight < $1.weight }).first {
                                    Text(String(format: "%.1f kg", lightest.weight))
                                        .font(.title3)
                                        .bold()
                                } else {
                                    Text("0.0 kg")
                                        .font(.title3)
                                        .bold()
                                }
                            }
                        }
                        WeightChartView(viewModel: weightViewModel)
                    }

                    HStack {
                        Text("BMI")
                            .font(.title)
                            .bold()
                        Spacer()
                        Button(action: {
                            bmiViewModel.calculateBMI()
                            showBMIEntrySheet = true
                        }) {
                            Text("Edit")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 40)
                                .background(Color.blue)
                                .clipShape(.rect(cornerRadius: 10))
                        }
                    }
                    .sheet(isPresented: $showBMIEntrySheet) {
                        BMIEntryView(viewModel: bmiViewModel, showSheet: $showBMIEntrySheet)
                            .presentationDetents([.medium])
                    }

                    GroupBox {
                        VStack(alignment: .leading, spacing: 20) {
                            HStack {
                                Text("BMI Value:")
                                    .font(.title3)
                                Text("\(bmiViewModel.bmiValue)")
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            HStack {
                                Text("BMI Category:")
                                    .font(.title3)
                                Text(bmiViewModel.bmiCategory)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            HStack {
                                Spacer()
                                
                                if (bmiViewModel.bmiValue != "") {
                                    ring(for: LinearGradient(
                                        gradient: Gradient(colors: [.yellow, .green, .orange, .red]),
                                        startPoint: .bottomTrailing,
                                        endPoint: .topLeading
                                    ), progress: bmiViewModel.bmiValue)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                               }
                                
                                Spacer()
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Report")
        }
    }
    
    @ViewBuilder
    private func ring(for color: LinearGradient, progress value: String) -> some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 15))
            .foregroundStyle(.tertiary)
            .overlay {
                Circle()
                    .trim(from: 0, to: convertAndTrim(value: value))
                    .stroke(color, style: StrokeStyle(lineWidth: 15, lineCap: .round))
            }
            .rotationEffect(.degrees(-90))
    }
    
    private func convertAndTrim(value: String) -> CGFloat {
        let doubleValue = Double(value) ?? 0.0
        let cgFloatValue = CGFloat(doubleValue / 50)
        
        return cgFloatValue
    }
}

#Preview {
    ReportView(weightViewModel: WeightViewModel(userId: "abc123"),
               bmiViewModel: BMIViewModel(userId: "abc123"))
}

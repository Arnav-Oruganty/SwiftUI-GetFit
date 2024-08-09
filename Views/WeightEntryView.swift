//
//  WeightEntryView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 20/07/24.
//

import SwiftUI

struct WeightEntryView: View {
    @ObservedObject var viewModel: WeightViewModel
    @Binding var showSheet: Bool
    
    @State private var showDatePickerSheet = false
    @State private var selectedDate = Date()
    @State private var temporaryDate: Date? = nil
    
    @State private var weight = ""
    
    let dateFormatter: DateFormatter
    
    init(showSheet: Binding<Bool>, viewModel: WeightViewModel) {
        self._showSheet = showSheet
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateStyle = .medium
        self._viewModel = ObservedObject(wrappedValue: viewModel)
    }
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack(alignment: .center , spacing: 40) {
            Spacer()
            
            HStack {
                Text("Date")
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
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                Button(action: {
                    temporaryDate = selectedDate
                    showDatePickerSheet = true
                }) {
                    Text("\(dateFormatter.string(from: selectedDate))")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .font(.title3)
                        .foregroundStyle(.white)
                        .background(.white.opacity(0.1))
                        .clipShape(.capsule)
                }
                .sheet(isPresented: $showDatePickerSheet) {
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        DatePicker(
                            "Select Date",
                            selection: Binding(
                                get: { temporaryDate ?? selectedDate },
                                set: { temporaryDate = $0 }
                            ),
                            in: ...Date(),
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .padding()
                        
                        HStack (spacing: 10) {
                            Button(action: {
                                showDatePickerSheet = false
                                temporaryDate = nil
                            }) {
                                Text("Cancel")
                                    .padding()
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .background(.white.opacity(0.1))
                                    .clipShape(.capsule)
                            }
                            .padding()
                            
                            Button(action: {
                                if let tempDate = temporaryDate {
                                    selectedDate = tempDate
                                }
                                showDatePickerSheet = false
                                temporaryDate = nil
                                
                                if let weightValue = Double(weight) {
                                    viewModel.addEntry(
                                        date: selectedDate,
                                        weight: weightValue
                                    )
                                    weight = ""
                                    showSheet = false
                                }
                            }) {
                                Text("Save")
                                    .padding()
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .background(.blue)
                                    .clipShape(.capsule)
                            }
                            .padding()
                        }
                
                        Spacer()
                        Spacer()
                    }
                    .presentationDetents([.fraction(0.7)])
                }
            }
            
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
                
                TextField("Enter weight in kg", text: $weight)
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
                        .background(.white.opacity(0.1))
                        .clipShape(.capsule)
                }
                
                Spacer()
                
                Button(action: {
                    if let weightValue = Double(weight) {
                        viewModel.addEntry(date: selectedDate, weight: weightValue)
                        weight = ""
                        showSheet = false
                    }
                }) {
                    Text("Save")
                        .padding()
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(.capsule)
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WeightEntryView(showSheet: .constant(true), viewModel: WeightViewModel(userId: ""))
}

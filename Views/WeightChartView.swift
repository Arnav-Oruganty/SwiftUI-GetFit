//
//  WeightChartView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 20/07/24.
//
import SwiftUI
import Charts

struct WeightChartView: View {
    @ObservedObject var viewModel: WeightViewModel
    
    let dateFormatter: DateFormatter
    
    init(viewModel: WeightViewModel) {
        self.viewModel = viewModel
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateFormat = "dd/MM"
    }
    
    var body: some View {
        Group {
            if viewModel.entries.isEmpty {
                Color.clear
                    .frame(width: 0, height: 0)
            } else {
                Chart {
                    ForEach(viewModel.entries.sorted { $0.date < $1.date }) { data in
                        LineMark(
                            x: .value("Date", data.date),
                            y: .value("Weight", data.weight)
                        )
                        .symbol(.circle)
                        
                        PointMark(
                            x: .value("Date", data.date),
                            y: .value("Weight", data.weight)
                        )
                        .annotation {
                            VStack{
                                Text(String(format: "%.1f kg", data.weight))
                                    .bold()
                                Text(data.date, format: .dateTime.day().month())
                                    .bold()
                            }
                        }
                    }
                }
                .padding()
                .background(.black.opacity(0.05))
                .clipShape(.rect(cornerRadius: 10))
                .aspectRatio(1, contentMode: .fit)
                .chartScrollableAxes(.horizontal)
                .chartScrollTargetBehavior(.paging)
                .chartXAxis {
                    AxisMarks(values: .stride(by: .day, count: calculateStride())) { value in
                        AxisGridLine()
                        if let date = value.as(Date.self) {
                            AxisValueLabel(centered: true) {
                                Text("\(dateFormatter.string(from: date))")
                            }
                        }
                    }
                }
                .chartYAxis {
                    AxisMarks { value in
                        AxisGridLine()
                        AxisValueLabel()
                    }
                }
            }
        }
    }
    
    private func calculateStride() -> Int {
        guard let firstDate = viewModel.entries.first?.date,
              let lastDate = viewModel.entries.last?.date else {
            return 1
        }
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: firstDate, to: lastDate)
        let dayCount = components.day ?? 1
        
        return max(dayCount / 7, 1)
    }
}

#Preview {
    WeightChartView(viewModel: WeightViewModel(userId: ""))
}


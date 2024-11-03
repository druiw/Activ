//
//  CalendarView.swift
//  Workout
//
//  Created by Drew Igoe on 10/15/24.
//

import SwiftUI

struct CalendarView: View {
    let daysInMonth = [
        ["29", "30", "1", "2", "3", "4", "5"],
        ["6", "7", "8", "9", "10", "11", "12"],
        ["13", "14", "15", "16", "17", "18", "19"],
        ["20", "21", "22", "23", "24", "25", "26"],
        ["27", "28", "29", "30", "31", "1", "2"]
    ]
    
    // Example set of days where workouts were completed
    let workoutDays: Set<String> = ["29", "5", "15"] // Add the completed workout days here
    
    var body: some View {
        VStack {
            // Header with Progress and Day Count
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "arrow.up.circle.fill")
                            .foregroundColor(.green)
                        
                        Text("0 days")
                            .font(.headline)
                    }
                }
                Spacer()
                
                HStack {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 4)
                            .opacity(0.3)
                            .foregroundColor(.orange)
                        
                        Circle()
                            .trim(from: 0.0, to: 0.2)
                            .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                            .foregroundColor(.orange)
                            .rotationEffect(Angle(degrees: -90))
                        
                        Text("2")
                            .font(.headline)
                            .foregroundColor(.orange)
                    }
                    .frame(width: 35, height: 35)
                    
                    Text("250 ✖︎")
                        .font(.headline)
                        .padding(.leading, 5)
                }
            }
            .padding()
            
            // Calendar Grid
            VStack(spacing: 10) {
                ForEach(daysInMonth, id: \.self) { week in
                    HStack(spacing: 10) {
                        ForEach(week, id: \.self) { day in
                            Text(day)
                                .font(.headline)
                                .fontWeight(.light)
                                .foregroundColor(workoutDays.contains(day) ? .white : .black) // Set text color to white if workout day, otherwise black
                                .frame(width: 40, height: 40)
                                .background(
                                    workoutDays.contains(day) ?
                                        AnyView(
                                            LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.green]), startPoint: .leading, endPoint: .trailing)
                                        ) :
                                        AnyView(Color.clear)
                                )
                                .clipShape(Circle()) // Ensure the gradient is clipped to a circle
                        }
                    }
                }
            }
            .padding()
            .background(Color(.white))
            .cornerRadius(15)
        }
        .padding()
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}


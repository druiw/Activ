//
//  HomeView.swift
//  Workout
//
//  Created by Drew Igoe on 10/3/24.
//

import SwiftUI

struct HomeView: View {
    //@State private var isExpanded = false
    var body: some View {
        NavigationView {
                ZStack {
                    VStack {
                        ZStack {
                            Color(red: 0.95, green: 0.95, blue: 0.95)
                                .edgesIgnoringSafeArea(.all) // Extend the color to edges
                            VStack {
                                CalendarView()
                                //.shadow(radius: 5)
                                Spacer()
                                HStack(spacing: 1) {
                                    NewWorkoutButton()
                                        .shadow(radius: 5)// Call the NewWorkoutButton here
                                    NewFileButton()
                                        .shadow(radius: 5)
                                }
                                CollectionButton()
                                //.padding(.bottom, 150) // Optional: Control spacing below buttons if necessary
                            }
                        }
                    }
                    .navigationTitle("Workout")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

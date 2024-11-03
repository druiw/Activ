//
//  AddExcerciseSheet.swift
//  Workout
//
//  Created by Drew Igoe on 10/15/24.
//

import SwiftUI

struct AddExerciseSheet: View {
    @State private var searchText = "" // For search input
    @State private var selectedExercises: Set<String> = [] // Track selected exercises

    // Filter exercises based on search text
    var filteredExercises: [String] {
        if searchText.isEmpty {
            return exercises
        } else {
            return exercises.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        VStack {
            // Search Bar
            HStack {
                Image(systemName: "magnifyingglass") // SF Symbol for the magnifying glass
                    .foregroundColor(.gray) // Optional: Change color to fit your design
                    .padding(.leading, 10) // Add some padding to the left of the image

                TextField("Search exercises...", text: $searchText)
                    .padding(10)
                    .background(Color(.white))
                    .cornerRadius(8)
                    .padding(.horizontal)
            }

            // Exercise List
            List(filteredExercises, id: \.self) { exercise in
                HStack {
                    Image(systemName: "dumbbell") // Use the appropriate image name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40) // Adjust size as needed
                        .cornerRadius(8) // Optional: Add rounded corners to the image

                    Text(exercise)
                        .padding(.leading, 15)
                        
                    Spacer()
                        
                }
                .contentShape(Rectangle()) // Makes the entire row tappable
                .onTapGesture {
                    // Toggle selection
                    if selectedExercises.contains(exercise) {
                        selectedExercises.remove(exercise) // Deselect if already selected
                    } else {
                        selectedExercises.insert(exercise) // Select if not selected
                    }
                }
                .background(selectedExercises.contains(exercise) ? Color.green.opacity(0.35) : Color.clear) // Highlight selected row
            }
            .listStyle(PlainListStyle()) // Optional: Makes the list style plain without separators
            .listRowSeparator(.hidden) // Hides the separator for each row
            .frame(maxWidth: .infinity)

            Spacer()

            // Optional: Add a "Done" button to confirm selections
            Button(action: {
                // Handle the selected exercises here
                print("Selected exercises: \(selectedExercises)")
            }) {
                HStack {
                    Spacer()
                    
                    Text("Add Exercise")
                        .font(.headline)
                        .padding()
                        
                    Spacer()
                }
                .background(LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.green]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .cornerRadius(30)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct AddExerciseSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddExerciseSheet()
    }
}


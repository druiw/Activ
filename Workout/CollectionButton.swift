//
//  CollectionButton.swift
//  Workout
//
//  Created by Drew Igoe on 10/29/24.
//

import SwiftUI

struct CollectionButton: View {
    @State private var isExpanded = false
    
    var body: some View {
            VStack {
                Button(action: {
                    isExpanded.toggle()
                }) {
                    HStack {
                        Image(systemName: "square.on.square")
                            .foregroundColor(.black)
                        Text("My Workouts")
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: isExpanded ? "chevron.down" : "chevron.forward")
                            .foregroundColor(.black)
                    }
                    .padding()
                    .cornerRadius(10)
                    .shadow(radius: 2)
                }
                
                if isExpanded {
                    HStack(spacing: 10) {
                        Image(systemName: "square")
                            .imageScale(.large)
                        Image(systemName: "square")
                            .imageScale(.large)
                    }
                    .padding() // Adding some padding to the expanded content
                }
            }
            .animation(.easeInOut, value: isExpanded)
            .padding() // Ensure there’s some padding around the entire content
        .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Helps to see the scroll view area
    }
}

struct CollectionButton_Previews: PreviewProvider {
    static var previews: some View {
        CollectionButton()
    }
}


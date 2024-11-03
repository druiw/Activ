//
//  MyFitnessButton.swift
//  Workout
//
//  Created by Drew Igoe on 11/3/24.
//

import SwiftUI

struct MyFitnessButton: View {
    var body: some View {
        HStack {
            Image(systemName: "figure")
                .foregroundColor(.blue)
            Text("My Fitness")
                .padding(.trailing, 30)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 2)
    }
}

struct MyFitnessButton_Previews: PreviewProvider {
    static var previews: some View {
        MyFitnessButton()
    }
}

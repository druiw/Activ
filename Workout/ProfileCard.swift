//
//  ProfileCard.swift
//  Workout
//
//  Created by Drew Igoe on 11/3/24.
//

import SwiftUI

struct ProfileCard: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))
            VStack(alignment: .leading) {
                Text("Mya Dev")
                    .font(.title)
                    .fontWeight(.medium)
                
                Text("mya")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
                Text("") // Placeholder or additional information can go here
            }
            Spacer()
        }
        .padding() // Optional padding for spacing
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}


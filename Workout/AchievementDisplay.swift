//
//  AchievementDisplay.swift
//  Workout
//
//  Created by Drew Igoe on 11/3/24.
//

import SwiftUI

struct AchievementDisplay: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Achievement Display")
                    .font(.callout)
                    .fontWeight(.light)
                HStack {
                    AchievementHolder()
                        .padding(.trailing, 30)
                    AchievementHolder()
                        .padding(.trailing, 30)
                    AchievementHolder()
                        .padding(.trailing, 30)
                    AchievementHolder()
                        .padding(.trailing, 30)
                }
                
            }
            .padding()
            
            
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image(systemName: "location.fill")
                        .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
                    Text("United States")
                }
                .padding(.leading, 25)
                
                HStack(alignment: .center) {
                    Image(systemName: "person.circle")
                        .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
                    Text("Add Bio...")
                        .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
                }
                .padding(.leading, 25)
                
                HStack {
                    Image(systemName: "plus.app")
                        .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
                    Text("Add Instagram")
                        .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
                }
                .padding(.leading, 25)
                .frame(maxWidth: .infinity, alignment: .leading) // Aligns HStack to the leading edge
            }
            .padding()
            .background(Color(hue: 1.0, saturation: 0.006, brightness: 0.922))
        }
        .background(Color.white)
        .cornerRadius(30)
    }
}

struct AchievementDisplay_Previews: PreviewProvider {
    static var previews: some View {
        AchievementDisplay()
    }
}

//
//  AchievementHolder.swift
//  Workout
//
//  Created by Drew Igoe on 11/3/24.
//

import SwiftUI

struct AchievementHolder: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(red: 0.95, green: 0.95, blue: 0.95))
                .frame(width: 50.0, height: 50.0)
            Image(systemName: "plus")
                .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
        }
    }
}

struct AchievementHolders: PreviewProvider {
    static var previews: some View {
        AchievementHolder()
    }
}

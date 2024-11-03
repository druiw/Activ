//
//  StreakButton.swift
//  Workout
//
//  Created by Drew Igoe on 10/29/24.
//

import SwiftUI

struct StreakButton: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Streak")
                .font(.callout)
                .fontWeight(.thin)
            
            Spacer()
                .frame(height: 30)
            
            Text("0 days")
                .font(.title)
                .fontWeight(.regular)
            
            HStack {
                Image(systemName: "globe")
                    .font(.callout)
                    .fontWeight(.thin)
                Text("Below Average")
                    .font(.callout)
                    .fontWeight(.thin)
            }
        }
    }
}

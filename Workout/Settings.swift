//
//  Settings.swift
//  Workout
//
//  Created by Drew Igoe on 11/3/24.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        HStack {
            Image(systemName: "gear")
                .foregroundColor(Color(hue: 0.609, saturation: 0.281, brightness: 0.747))
            Text("Settings")
                .padding(.trailing, 50)
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 2)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

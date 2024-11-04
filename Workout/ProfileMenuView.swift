//
//  ProfileMenuView.swift
//  Workout
//
//  Created by Drew Igoe on 11/3/24.
//

import SwiftUI

struct ProfileMenuView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.95, green: 0.95, blue: 0.95)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        ProfileCard()
                            .padding(.top, 40)
                        
                        HStack {
                            MyFitnessButton()
                            Settings()
                        }
                        
                        AchievementDisplay()
                            .padding()
                            .shadow(radius: 1)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ProfileMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuView()
    }
}

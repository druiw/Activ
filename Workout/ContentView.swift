
//
//  ContentView.swift
//  Workout
//
//  Created by Drew Igoe on 10/2/24.
// 

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ScrollView {
            HomeView()
        }
    }
}

struct BodyView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Content goes here
            }
            .navigationTitle("Recovery")
        }
    }
}

struct LogView: View {
    var body: some View {
        NavigationView {
            StatsView()
            Spacer()
            .navigationTitle("Stats")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileMenuView()
            }
            
            //.navigationTitle("Profile")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            //BodyView()
               // .tabItem {
                   // Image(systemName: "figure.cooldown")
                    //Text("Body")
                //}
            
            LogView()
                .tabItem {
                    Image(systemName: "heart.text.clipboard")
                    Text("Stats")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}


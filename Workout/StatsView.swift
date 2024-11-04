import SwiftUI

struct StatsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.95, green: 0.95, blue: 0.95)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 15) { // Use smaller spacing for closeness
                        HStack(spacing: -60) { // Use smaller spacing for closeness
                            StreakButton()
                                .buttonStyle()
                            
                            StepsButton()
                                .buttonStyle()
                        }
                        
                        HStack(spacing: -60) { // Use smaller spacing for closeness
                            CaloriesButton()
                                .buttonStyle()
                            
                            BodyWeightButton()
                                .buttonStyle()
                        }
                        
                        Rectangle()
                            .frame(height: 0.5)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.029, brightness: 0.81))
                            .padding(.top, 25)
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("0 hr")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                }
                                Text("Workout This Week")
                                    .font(.footnote)
                                    .fontWeight(.thin)
                            }
                            
                            Rectangle()
                                .frame(height: 10)
                                .opacity(0)
                            
                            HStack {
                                Image(systemName: "dumbbell")
                                Text("Barbell Curl")
                                Spacer()
                                
                            }
                            Rectangle()
                                .frame(height: 0.5)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.029, brightness: 0.81))
                                .padding(.top, 5)
                            
                            HStack {
                                Image(systemName: "dumbbell")
                                Text("Barbell Row")
                                Spacer()
                            }
                            .padding(.top, 10)
                        }
                        .padding()
                        
                        Spacer() // Add this spacer to push buttons to the top
                    }
                    .padding(.top, 20)
                } // Adjust as necessary
            }
            .navigationTitle("Stats")
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}


import SwiftUI

struct NewWorkoutScreen: View {
    @State private var showAddExerciseSheet = false
    
    var body: some View {
        ZStack {
            Color(red: 0.93, green: 0.93, blue: 0.93) // Set the background color
                .edgesIgnoringSafeArea(.all) // Extend the color to edges
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 50, height: 50)
                            .cornerRadius(8)
                        Image(systemName: "dumbbell.fill")
                            .resizable()
                            .frame(width: 30, height: 20)
                            .padding()
                    }
                    VStack(alignment: .leading) {
                        Text("My Workout")
                            .font(.title3)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Text("Set Workout Day")
                            .font(.callout)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.005, brightness: 0.215))
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    
                }
                .padding(.leading, 20)
                
                Button(action : {
                    showAddExerciseSheet.toggle()
                }) {
                    HStack {
                        ZStack {
                            Rectangle()
                                .fill(Color(hue: 1.0, saturation: 0.001, brightness: 0.889))
                                .frame(width: 40, height: 40)
                                .cornerRadius(8)
                            Image(systemName: "plus")
                                .resizable()
                                .foregroundColor(Color.gray)
                                .frame(width: 15, height: 15)
                                .padding()
                        }
                        
                        .padding(.leading, 13)
                        
                        Text("Add Exercise")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                        Spacer()
                    }
                }
                
                .padding(.vertical, 13)
                .background(Color.white)
                .cornerRadius(20)
                .padding(.horizontal,20)
                
                Spacer()
            }
            
           // .navigationTitle("New Workout")
           // .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
        // Show the sheet when the button (stack) is clicked
                .sheet(isPresented: $showAddExerciseSheet) {
                    AddExerciseSheet() // Reference the AddExerciseSheet view
                }
    }
}

struct NewWorkoutScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewWorkoutScreen()
    }
}


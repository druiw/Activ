import SwiftUI

struct NewWorkoutButton: View {
    var body: some View {
        NavigationLink(destination: NewWorkoutScreen()) {
            HStack {
                Image(systemName: "document.badge.plus")
                    .foregroundStyle(.linearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))
                Text("New Workout")
                    .fontWeight(.medium)
            }
            .padding()
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(40)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading) // Align to the leading edge
    }
}

struct NewWorkoutButton_Previews: PreviewProvider {
    static var previews: some View {
        NewWorkoutButton()
    }
}


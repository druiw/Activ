//
//  NewFileButton.swift
//  Workout
//
//  Created by Drew Igoe on 10/15/24.
//

import SwiftUI

struct NewFileButton: View {
    var body: some View {
            HStack {
                Image(systemName: "folder.badge.plus")
                    .foregroundStyle(.linearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))
                Text("New File")
                    .fontWeight(.medium)
                Spacer()
            }
            .padding()
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(40)

        .padding()
        .frame(maxWidth: .infinity, alignment: .leading) // Align to the leading edge
    }
}



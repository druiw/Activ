//
//  ButtonStyleModifier.swift
//  Workout
//
//  Created by Drew Igoe on 10/29/24.
//

import SwiftUI

struct ButtonStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            .shadow(radius: 5)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

extension View {
    func buttonStyle() -> some View {
        self.modifier(ButtonStyleModifier())
    }
}

//
//  KeyboardButton.swift
//  hexeboard
//
//  Created by Bareket Damari on 24/07/2024.
//

import SwiftUI

struct KeyboardButton: View {
    var label: String
    var width: CGFloat = 50
    var height: CGFloat = 50
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            Text(label)
                .frame(width: width, height: height)
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 2)
        }
    }
}
struct ENKeyboardButton: View {
    var label: String
    var width: CGFloat = 50
    var height: CGFloat = 50
    var isUppercase: Bool = false
    var action: () -> Void
    
    var displayedLabel: String {
        return isUppercase ? label.uppercased() : label.lowercased()
    }
    
    var body: some View {
        Button(action: action) {
            Text(displayedLabel)
                .frame(width: width, height: height)
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 2)
                .foregroundColor(.blue)
        }
    }
}


#Preview {
    KeyboardButton(label: "A")
}

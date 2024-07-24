//
//  ContentView.swift
//  hexeboard
//
//  Created by Bareket Damari on 24/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var cursorPosition: Int = 0

    var body: some View {
        VStack {
            TextEditor(text: $text)
                .disabled(true) // Disable default keyboard
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .frame(height: 100)
            
            HStack {
                Button(action: moveCursorLeft) {
                    Image(systemName: "arrow.left")
                }
                .padding()
                
                Button(action: moveCursorRight) {
                    Image(systemName: "arrow.right")
                }
                .padding()
            }
            
            CustomKeyboardView()
        }
        .padding()
    }

    private func moveCursorLeft() {
        cursorPosition = max(cursorPosition - 1, 0)
    }
    
    private func moveCursorRight() {
        cursorPosition = min(cursorPosition + 1, text.count)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

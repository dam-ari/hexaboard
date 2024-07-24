//
//  CustomKeyboardView.swift
//  hexeboard
//
//  Created by Bareket Damari on 24/07/2024.
//
import SwiftUI

struct CustomKeyboardView: View {
    @State private var text: String = ""
    @State private var isUppercase: Bool = false
    
    // Define arrays for each row
    let firstRow = ["T", "Y"]
    let secondRow_a = ["E", "R"]
    let secondRow_b = ["U", "I"]
    let thirdRow_a = ["W", "123", "😊"]
    let thirdRow_b = ["🌐", "⬆", "⌫", "O"]
    let fourthRow = ["Q", "S", "D", "F", "G", "H", "J", "K"]
    let fifthRow = ["A", "N", "M", "L"]
    let sixthRow = ["Z", "X", "C", "V", "B"]
    
    var body: some View {
        VStack {
            Text(text)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.top, 10)
            
            Spacer()
            
            ScrollView(.horizontal) {
                VStack(spacing: 10) {
                    HStack(spacing: 5) {
                        Spacer()
                        ForEach(firstRow, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Spacer()
                        ForEach(secondRow_a, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        
                        createButton(letter: "␣", width: 50)
                        
                        ForEach(secondRow_b, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Spacer()
                        ForEach(thirdRow_a, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        
                        ForEach(thirdRow_b, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Spacer()
                        ForEach(fourthRow, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Spacer()
                        ForEach(fifthRow, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Spacer()
                        ForEach(sixthRow, id: \.self) { letter in
                            createButton(letter: letter)
                        }
                        Spacer()
                    }
                }
                .padding()
            }
            .padding()
            Spacer()
        }
    }
    
    private func createButton(letter: String, width: CGFloat = 40) -> some View {
        Button(action: {
            handleButtonPress(letter: letter)
        }) {
            Text(isUppercase ? letter.uppercased() : letter.lowercased())
                .frame(width: width, height: 40)
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 2)
                .foregroundColor(.blue)
        }
    }
    
    private func handleButtonPress(letter: String) {
        if letter == "⬆" {
            toggleCase()
        } else if letter == "⌫" {
            if !text.isEmpty {
                text.removeLast()
            }
        } else {
            addText(isUppercase ? letter.uppercased() : letter.lowercased())
        }
    }
    
    private func addText(_ char: String) {
        text += char
    }
    
    private func toggleCase() {
        isUppercase.toggle()
    }
}

#Preview {
    CustomKeyboardView()
}

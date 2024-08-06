//
//  ContentView.swift
//  hexeboard
//
//  Created by Bareket Damari on 24/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var isUppercase: Bool = false
    
    // Define arrays for each row
    let firstRow = ["R", "T", "Y", "U", "I"]
    let secondRow_a = ["Q", "W", "E"]
    let secondRow_b = ["⬆", "O", "P"]
    let thirdRow_a = ["A", "S", "123", "😊"]
    let thirdRow_b = ["🌐", "⌫", "J", "K"]
    let fourthRow = ["Z", "D", "F", "G", "H", "M", "L"]
    let fifthRow = ["X", "C", "V", "B", "N"]
    let sixthRow = [""] // Adjust as needed
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(text)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
//                    .minimumScaleFactor(0.5)
                    .padding()
                    .frame(height: 15)
                
                Spacer()
                
                Button(action: copyText) {
                    Image(systemName: "doc.on.doc")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(4)
                }
                .frame(width: 40, height: 20)
                .padding(.trailing, 5)
            }.padding(.bottom, 15)
            
            Spacer()
            Spacer()
            
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        HStack(spacing: 0) {
                            ForEach(firstRow, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                        }
                        
                        HStack(spacing: 0) {
                            ForEach(secondRow_a, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                            
                            createButton(letter: "␣", width: 35)
                            
                            ForEach(secondRow_b, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                        }
                        
                        HStack(spacing: 0) {
                            ForEach(thirdRow_a, id: \.self) { letter in
                                if letter == "123" {
                                    createButton(letter: letter, width: 35)
                                } else {
                                    createButton(letter: letter)
                                }
                            }
                            
                            ForEach(thirdRow_b, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                        }
                        
                        HStack(spacing: 0) {
                            ForEach(fourthRow, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                        }
                        
                        HStack(spacing: 0) {
                            ForEach(fifthRow, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                        }
                    }
                    .padding(.bottom, 10)
                }
            }
            .padding()
        }
    }
    
    private func createButton(letter: String, width: CGFloat = 40) -> some View {
        Button(action: {
            handleButtonPress(letter: letter)
        }) {
            Text(isUppercase ? letter.uppercased() : letter.lowercased())
                .frame(width: width, height: 40)
                .background(Color.white)
                .cornerRadius(6)
                .foregroundColor(.blue)
                .font(.footnote)
            
        }
        .shadow(radius: 0.75)
        .padding(1)
        .buttonStyle(PlainButtonStyle()) // Removes default button background
    }
    
    private func handleButtonPress(letter: String) {
        if letter == "⬆" {
            toggleCase()
        } else if letter == "⌫" {
            if !text.isEmpty {
                text.removeLast()
            }
        } else if letter == "␣" {
            addText(" ") // Add a space
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
    
    private func copyText() {
        // Present share sheet to copy text manually
        guard !text.isEmpty else { return }
        let activityViewController = UIActivityViewController(activityItems: [text], applicationActivities: [])
        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

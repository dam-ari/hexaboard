//
//  ContentView.swift
//  hexoboard Watch Watch App
//
//  Created by Bareket Damari on 24/07/2024.
//

import SwiftUI
import WatchConnectivity

struct WatchKeyboardView: View {
    @State private var text: String = ""
    @State private var isUppercase: Bool = false
    
    // Define arrays for each row
    let firstRow = ["T", "Y"]
    let secondRow_a = ["E", "R"]
    let secondRow_b = ["U", "I"]
    let thirdRow_a = ["W", "123", "😊"]
    let thirdRow_b = ["🌐", "⬆", "⌫", "O"]
    let fourthRow = ["Q","S", "D", "F", "G", "H", "J", "K"]
    let fifthRow = ["A", "N", "M", "L"]
    let sixthRow = ["Z", "X", "C", "V", "B"]
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
                Button(action: sendToiPhone) {
                    Text("Send")
                        .font(.footnote)
                        .padding(4)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(4)
                }
            }
            .padding(.top, 2)
            
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
                                createButton(letter: letter)
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
                        
                        HStack(spacing: 0) {
                            ForEach(sixthRow, id: \.self) { letter in
                                createButton(letter: letter)
                            }
                        }
                    }
                    .padding(.bottom, 10)
                    
                    // Loop back
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
                    }
                }
            }
            .padding()
        }
    }
    
    private func createButton(letter: String, width: CGFloat = 20) -> some View {
        Button(action: {
            handleButtonPress(letter: letter)
        }) {
            Text(isUppercase ? letter.uppercased() : letter.lowercased())
                .frame(width: width, height: 20)
                .background(Color.white)
                .cornerRadius(6)
                .foregroundColor(.blue)
                .font(.footnote)
        }
        .buttonStyle(PlainButtonStyle()) // Removes default button background
    }
    
    private func handleButtonPress(letter: String) {
        if letter == "⬆" {
            toggleCase()
        } else if letter == "⌫" {
            if !text.isEmpty {
                text.removeLast()
            }
        } else {
            addText(letter)
        }
    }
    
    private func addText(_ char: String) {
        text += char
    }
    
    private func toggleCase() {
        isUppercase.toggle()
    }
    
    private func sendToiPhone() {
        guard WCSession.default.isReachable else {
            // Handle error
            return
        }
        WCSession.default.sendMessage(["text": text], replyHandler: nil, errorHandler: nil)
    }
}

struct WatchKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        WatchKeyboardView()
    }
}


#Preview {
    WatchKeyboardView()
}

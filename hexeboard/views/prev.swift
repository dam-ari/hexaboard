//
//  prev.swift
//  hexeboard
//
//  Created by Bareket Damari on 24/07/2024.
//

import SwiftUI

struct prev: View {
    @State private var text: String = ""
    @State private var isUppercase: Bool = false
    
    let letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    var body: some View {
        VStack {
            Text(text)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.top, 20)
            
            Spacer()
            
            GeometryReader { geometry in
                VStack {
                    ForEach(0..<letters.count / 10 + 1, id: \.self) { row in
                        HStack {
                            ForEach(0..<10, id: \.self) { col in
                                let index = row * 10 + col
                                if index < letters.count {
                                    ENKeyboardButton(
                                        label: String(letters[index]),
                                        isUppercase: isUppercase,
                                        action: { addText(isUppercase ? String(letters[index]).uppercased() : String(letters[index]).lowercased()) }
                                    )
                                    .frame(width: 50, height: 50)
                                }
                            }
                        }
                    }
                }
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
            .padding()
            
            Button(action: toggleCase) {
                Text(isUppercase ? "Uppercase" : "Lowercase")
            }
            .padding()
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
    prev()
}

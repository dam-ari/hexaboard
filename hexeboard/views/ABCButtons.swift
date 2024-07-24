//
//  Buttons.swift
//  hexeboard
//
//  Created by Bareket Damari on 24/07/2024.
//

import SwiftUI



struct ABtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "A", isUppercase: isUppercase) {
            action(isUppercase ? "A" : "a")
        }
    }
}

struct BBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "B", isUppercase: isUppercase) {
            action(isUppercase ? "B" : "b")
        }
    }
}

struct CBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "C", isUppercase: isUppercase) {
            action(isUppercase ? "C" : "c")
        }
    }
}

struct DBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "D", isUppercase: isUppercase) {
            action(isUppercase ? "D" : "d")
        }
    }
}

struct EBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "E", isUppercase: isUppercase) {
            action(isUppercase ? "E" : "e")
        }
    }
}

struct FBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "F", isUppercase: isUppercase) {
            action(isUppercase ? "F" : "f")
        }
    }
}

struct GBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "G", isUppercase: isUppercase) {
            action(isUppercase ? "G" : "g")
        }
    }
}

struct HBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "H", isUppercase: isUppercase) {
            action(isUppercase ? "H" : "h")
        }
    }
}

struct IBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "I", isUppercase: isUppercase) {
            action(isUppercase ? "I" : "i")
        }
    }
}

struct JBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "J", isUppercase: isUppercase) {
            action(isUppercase ? "J" : "j")
        }
    }
}

struct KBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "K", isUppercase: isUppercase) {
            action(isUppercase ? "K" : "k")
        }
    }
}

struct LBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "L", isUppercase: isUppercase) {
            action(isUppercase ? "L" : "l")
        }
    }
}

struct MBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "M", isUppercase: isUppercase) {
            action(isUppercase ? "M" : "m")
        }
    }
}

struct NBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "N", isUppercase: isUppercase) {
            action(isUppercase ? "N" : "n")
        }
    }
}

struct OBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "O", isUppercase: isUppercase) {
            action(isUppercase ? "O" : "o")
        }
    }
}

struct PBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "P", isUppercase: isUppercase) {
            action(isUppercase ? "P" : "p")
        }
    }
}

struct QBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "Q", isUppercase: isUppercase) {
            action(isUppercase ? "Q" : "q")
        }
    }
}

struct RBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "R", isUppercase: isUppercase) {
            action(isUppercase ? "R" : "r")
        }
    }
}

struct SBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "S", isUppercase: isUppercase) {
            action(isUppercase ? "S" : "s")
        }
    }
}

struct TBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "T", isUppercase: isUppercase) {
            action(isUppercase ? "T" : "t")
        }
    }
}

struct UBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "U", isUppercase: isUppercase) {
            action(isUppercase ? "U" : "u")
        }
    }
}

struct VBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "V", isUppercase: isUppercase) {
            action(isUppercase ? "V" : "v")
        }
    }
}

struct WBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "W", isUppercase: isUppercase) {
            action(isUppercase ? "W" : "w")
        }
    }
}

struct XBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "X", isUppercase: isUppercase) {
            action(isUppercase ? "X" : "x")
        }
    }
}

struct YBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "Y", isUppercase: isUppercase) {
            action(isUppercase ? "Y" : "y")
        }
    }
}

struct ZBtn: View {
    @Binding var isUppercase: Bool
    var action: (String) -> Void
    
    var body: some View {
        ENKeyboardButton(label: "Z", isUppercase: isUppercase) {
            action(isUppercase ? "Z" : "z")
        }
    }
}

#Preview {
    ZBtn(isUppercase: .constant(false)) { _ in }
}

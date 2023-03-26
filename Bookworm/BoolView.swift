//
//  BoolView.swift
//  Bookworm
//
//  Created by Diar Orynbek on 25.03.2023.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.green, Color.blue]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .shadow(radius: isOn ? 0 : 5)
        .cornerRadius(20)
    }
}

struct BoolView: View {
    
    @State private var rememberme = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember me", isOn: $rememberme)
            Text(rememberme ? "On" : "Off")
        }
        
    }
}

struct BoolView_Previews: PreviewProvider {
    static var previews: some View {
        BoolView()
    }
}

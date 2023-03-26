//
//  DoubleView.swift
//  Bookworm
//
//  Created by Diar Orynbek on 26.03.2023.
//

import SwiftUI

struct DoubleView: View {
    
    var students = [24.03, 25.03, 26.03]
    @State private var selectedDouble = 26.03
    
    var body: some View {
        VStack {
            Text("Sdad")
//            Picker("Please choose one", selection: $selectedDouble) {
//                ForEach(students, id: \.self) {
//                    Text($0)
//                }
//            }
//            .pickerStyle(.wheel)
        }
    }
}

struct DoubleView_Previews: PreviewProvider {
    static var previews: some View {
        DoubleView()
    }
}

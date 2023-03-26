//
//  myUI.swift
//  Bookworm
//
//  Created by Diar Orynbek on 25.03.2023.
//

import SwiftUI

struct myUI: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Text("Характеристика".uppercased())
                }
                .padding()
                .font(.system(size: 20, weight: .medium, design: .monospaced))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Никнейм: ")
                        +
                        Text("Diko")
                        
                        Text("Работы: ")
                        +
                        Text("нет")
                        
                        Text("Титул: ")
                        +
                        Text("нет")
                        
                        Text("Озу: ")
                        +
                        Text("100")
                    }
                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Уровень: ")
                        +
                        Text("1")
                        
                        Text("Усталось: ")
                        +
                        Text("0")
                    }
                    .padding(.bottom, 40)
                }
    //            Rectangle()
    //                .frame(width: 30, height: 1)
    //                .padding()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Ом: ")
                        +
                        Text("10")
                    }
                    .padding(.trailing, 130)
                }
                
                Rectangle()
                    .frame(width: 230, height: 1)
                    .padding()
                
                HStack {
                    VStack(alignment: .trailing) {
                        Text("Сила: ")
                        +
                        Text("16")
                        
                        Text("Ловкость: ")
                        +
                        Text("10")
                        
                        Text("Восприятие: ")
                        +
                        Text("10")
                    }
                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Стойкость: ")
                        +
                        Text("10")
                        
                        Text("Интеллект: ")
                        +
                        Text("10")
                    }
                    .padding(.bottom, 40)
                }
                
                Rectangle()
                    .frame(width: 230, height: 1)
                    .padding()
                
                VStack(alignment: .trailing) {
                    Text("Осталось очков: ")
                    +
                    Text("3")
                    
                    Text("Whi are you?")
                        .font(.caption)
                    Text("Why are you important?")
                        .font(.caption)
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct myUI_Previews: PreviewProvider {
    static var previews: some View {
        myUI()
    }
}

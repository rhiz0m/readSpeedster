//
//  CircleBtn.swift
//  ReadSpeedster
//
//  Created by Andreas Antonsson on 2024-01-10.
//

import SwiftUI

struct CircleBtn: View {
    var body: some View {
        
        Button(action: {
            
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(.black, lineWidth: 2)
                    )
                Text("Play")
                    .bold()
                    .foregroundStyle(.black)
                
            }
        })
    }
}

#Preview {
    CircleBtn()
}

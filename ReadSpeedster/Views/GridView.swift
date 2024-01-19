//
//  GridView.swift
//  ReadSpeedster
//
//  Created by Andreas Antonsson on 2024-01-10.
//

import SwiftUI

struct GridView: View {
    let usersText: UsersTexts
    let numOfRectangles: [Int] = Array(1...8)
    
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 90))]
    
    @Binding var selectedText: String
    
    var body: some View {
        LazyVGrid(columns: adaptiveColumns, spacing:8) {
            ForEach(numOfRectangles, id: \.self) { item in
                ZStack {
                    Rectangle()
                        .frame(width: 90, height: 90)
                        .cornerRadius(8)
                    Text(usersText.texts[item - 1])
                        .foregroundStyle(.white)
                        .lineLimit(10)
                        .minimumScaleFactor(0.3)
                        .padding(8)
                }.onTapGesture {
                    selectedText = usersText.texts[item - 1]
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    @State static var selectedText: String = ""

    static var previews: some View {
        GridView(usersText: UsersTexts(), selectedText: $selectedText)
            .previewLayout(.sizeThatFits)
    }
}

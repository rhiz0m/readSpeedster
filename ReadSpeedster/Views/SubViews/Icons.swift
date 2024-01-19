//
//  Icons.swift
//  ReadSpeedster
//
//  Created by Andreas Antonsson on 2024-01-18.
//

import SwiftUI

struct Icons: View {
    var imageName: String

    var body: some View {
        Image(systemName: imageName)
            .imageScale(.large)
            .foregroundStyle(.black)
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons(imageName: "star")
    }
}

//
//  ReadSpeedsterApp.swift
//  ReadSpeedster
//
//  Created by Andreas Antonsson on 2024-01-08.
//

import SwiftUI

@main
struct ReadSpeedsterApp: App {
    var body: some Scene {
        WindowGroup {
            homeView(viewAdapter: HomeViewAdapter())
        }
    }
}

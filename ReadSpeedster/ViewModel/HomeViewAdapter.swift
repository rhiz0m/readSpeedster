// HomeViewModel.swift

// Fel projekt!!

import Foundation

class HomeViewAdapter: ObservableObject {
    @Published var viewModel: homeView.ViewModel?
    @Published var selectedText: String = ""
    @Published var currentWord: String = ""

    func generateViewModel() {
        self.viewModel = .init(
            title: "Read Speedster",
            burgerIcon: SystemIcons().burgerMenu,
            libraryIcon: SystemIcons().library,
            currentText: "",
            currentWord: "Word"
        )
    }
    
    func usersSelectedText(selectedText: String) {
        self.selectedText = selectedText
        updateCurrentWord()
    }

    func updateCurrentWord() {
        let words = selectedText.components(separatedBy: " ")
        guard let firstWord = words.first else { return }
        self.currentWord = firstWord
    }

}


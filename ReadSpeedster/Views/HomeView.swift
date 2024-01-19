//
//  homeView.swift
//  ReadSpeedster
//
//  Created by Andreas Antonsson on 2024-01-08.
//

import SwiftUI

struct homeView: View {
    @ObservedObject var viewAdapter: HomeViewAdapter
    @State var selectedText: String = ""
    @State var currentWord: String = ""
    @State var showGridView: Bool = true
    
    var body: some View {
        if let viewModel = viewAdapter.viewModel {
            topHeader(viewModel: viewModel)
        } else {
            ProgressView()
                .onAppear(perform: {
                    viewAdapter.generateViewModel()
                })
        }
    }
    
    struct ViewModel {
        let title: String
        let burgerIcon: String
        let libraryIcon: String
        let currentText: String
        let currentWord: String
    }
    
    @ViewBuilder func topHeader(viewModel: ViewModel) -> some View{
        VStack {
            HStack {
                Icons(imageName: viewModel.burgerIcon)
                Spacer()
                Text(viewModel.title)
                Spacer()
                Icons(imageName: viewModel.libraryIcon)
            }
            .padding()
            
            ZStack {
                if viewAdapter.selectedText.isEmpty {
                    GridView(usersText: UsersTexts(), selectedText: $viewAdapter.selectedText)
                        .background(Color.green)
                    
                    
                } else {
                    Text(viewAdapter.selectedText)
                        .onTapGesture {
                            print(viewAdapter.usersSelectedText(selectedText: self.viewAdapter.selectedText))
                        }
                }
            }
            .frame(height: 200)
            .padding(.horizontal, 4)
            .padding(.vertical, 4)
            .background(.green)
            
            VStack {
                if viewAdapter.selectedText.isEmpty {
                    Text(viewModel.currentWord)
                } else {
                    Text(viewAdapter.currentWord)
                }
                
            }
            .font(.title)
            .padding()
            
            CircleBtn()
        }
    }
}

#Preview {
    homeView(viewAdapter: HomeViewAdapter())
}

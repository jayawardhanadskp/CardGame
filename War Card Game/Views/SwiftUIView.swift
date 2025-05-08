//
//  SwiftUIView.swift
//  War Card Game
//
//  Created by I O N Groups Pvt Ltd on 2025-05-09.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(viewModel.playerCardImage)
                    Spacer()
                    Image(viewModel.cpuCardImage)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    viewModel.deal()
                }) {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                        Text("\(viewModel.game.playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                        Text("\(viewModel.game.cpuScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}


#Preview {
    ContentView()
}

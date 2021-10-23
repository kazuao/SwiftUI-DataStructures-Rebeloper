//
//  ContentView.swift
//  SwiftUI-DataStructures-Rebeloper
//
//  Created by kazunori.aoki on 2021/10/23.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = ContentViewModel()

    var body: some View {

        VStack {
            Text("\(viewModel.stack.isEmpty ? "Empty Stack" : "\(viewModel.stack.peek()!)")")
                .font(.system(size: 50, weight: .bold, design: .rounded))

            Divider()
            HStack {

                Spacer()

                Button {
                    viewModel.stack.pop()
                } label: {
                    Text("Pop")
                }

                Spacer()

                Button {
                    viewModel.stack.push(Int.random(in: 1...100))
//                    viewModel.stack.push((viewModel.stack.peek() ?? 0) + 1)
                } label: {
                    Text("Push")
                }

                Spacer()
            }
            Divider()
            Text(viewModel.stack.description)
            Spacer()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


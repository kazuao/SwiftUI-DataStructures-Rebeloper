//
//  ContentViewModel.swift
//  SwiftUI-DataStructures-Rebeloper
//
//  Created by kazunori.aoki on 2021/10/23.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var stack: Stack<Int> = []
}

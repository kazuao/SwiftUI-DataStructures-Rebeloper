//
//  Stack.swift
//  SwiftUI-DataStructures-Rebeloper
//
//  Created by kazunori.aoki on 2021/10/23.
//

import Foundation
import SwiftUI

struct Stack<Element> {
    private var storage: [Element] = []

    init(_ elements: [Element]) {
        storage = elements
    }

    mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }

    func peek() -> Element? {
        storage.last
    }

    var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element ... ) {
        storage = elements
    }
}

// インスタンスの文字列表現を独自の形に作成し、公開することができる
extension Stack: CustomStringConvertible {
    var description: String {
        """
        ---top---
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        ---------
        """
    }
}

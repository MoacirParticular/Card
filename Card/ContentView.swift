//
//  ContentView.swift
//  Card
//
//  Created by Moacir Ezequiel Lamego on 01/11/24.
//

import SwiftUI

struct ContentView: View {
    let cards = [
        Card(name: "Cartão A", backgroundColor: .green, type: .typeA),
        Card(name: "Cartão B", backgroundColor: .blue, type: .typeB),
        Card(name: "Cartão C", backgroundColor: .gray, type: .typeA),
    ]

    var body: some View {
        CarouselView(cards: cards)
    }
}

#Preview {
    ContentView()
}

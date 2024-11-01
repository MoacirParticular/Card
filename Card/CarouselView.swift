//
//  CarouselView.swift
//  Card
//
//  Created by Moacir Ezequiel Lamego on 01/11/24.
//

import SwiftUI

struct CarouselView: View {
    let cards: [Card]

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(cards, id: \.name) { card in
                    card.decorator()
                }
            }
            .padding()
        }
    }
}

//
//  Card.swift
//  Card
//
//  Created by Moacir Ezequiel Lamego on 01/11/24.
//

import SwiftUI

enum CardType {
    case typeA
    case typeB
    // Adicione mais tipos de cartão se necessário
}

struct Card {
    let name: String
    let backgroundColor: Color
    let type: CardType

    // Fábrica interna que retorna o decorador apropriado
    func decorator() -> some View {
        switch self.type {
        case .typeA:
            return AnyView(CardADecorator().decorate(card: self))
        case .typeB:
            return AnyView(CardBDecorator().decorate(card: self))
        }
    }
}

protocol CardDecorator {
    associatedtype Content: View
    func decorate(card: Card) -> Content
}

struct CardADecorator: CardDecorator {
    func decorate(card: Card) -> some View {
        Text(card.name)
            .frame(width: 200, height: 100)
            .background(card.backgroundColor)
            .cornerRadius(10)
            .rotationEffect(.degrees(90)) // Cartão deitado
    }
}

struct CardBDecorator: CardDecorator {
    func decorate(card: Card) -> some View {
        Text(card.name)
            .frame(width: 100, height: 200)
            .background(card.backgroundColor)
            .cornerRadius(10)
    }
}

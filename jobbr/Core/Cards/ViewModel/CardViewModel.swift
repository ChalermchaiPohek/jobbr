//
//  CardViewModel.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import Foundation


class CardViewModel: ObservableObject {
    @Published var cardModels: [CardModel] = []
    @Published var buttonSwipeAction: SwipeAction?
    
    private let service: CardService

    init(
        service: CardService
    ) {
        self.service = service
        Task {
            await fetchMockup()
        }
    }
    
    func fetchMockup() async {
        do {
            self.cardModels = try await self.service
                .fetchCards()
        } catch {
            print(
                error
            )
        }
    }
    
    func removeCard(ById cardId: String) {
        guard let Index = cardModels.firstIndex(where: { $0.id == cardId }) else { return }
        cardModels.remove(at: Index)
//        if #available(iOS 17.0, *) {
//            guard let Index = cardModels.firstIndex(where: { $0.id == cardId }) else { return }
//            cardModels.remove(at: Index)
//        } else {
//            Task {
//                try await Task.sleep(nanoseconds: 500_000_000)
//                guard let Index = cardModels.firstIndex(where: { $0.id == cardId }) else { return }
//                cardModels.remove(at: Index)
//            }
//        }

    }
}

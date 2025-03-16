//
//  CardViewModel.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var cardModels: [CardModel] = []
    private let service: CardService

    init(service: CardService) {
        self.service = service
        Task {
            await fetchMockup()
        }
    }
    
    func fetchMockup() async {
        do {
            self.cardModels = try await self.service.fetchCards()
        } catch {
            print(error)
        }
    }
}

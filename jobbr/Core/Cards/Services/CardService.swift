//
//  CardService.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import Foundation

struct CardService {
    
    func fetchCards() async throws -> [CardModel] {
        let users = MockData.users
        
        return users.map({ CardModel(user: $0)})
    }
}

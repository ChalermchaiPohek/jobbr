//
//  CardModel.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String {
        user.id
    }
}

//
//  User.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let name: String
    let position: String
    let isCompany: Bool
    var imagesURLs: [String]?
}

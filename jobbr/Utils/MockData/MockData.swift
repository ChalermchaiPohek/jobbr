//
//  MockData.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            name: "Name",
            position: "Position",
            isCompany: false,
            imagesURLs: [
                "placeholder",
                "placeholder_2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Name II",
            position: "Position II",
            isCompany: true,
            imagesURLs: [
                "tmp_placeholder_1",
                "tmp_placeholder_2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Name III",
            position: "Position III",
            isCompany: false,
            imagesURLs: [
                "user_placeholder_1",
                "user_placeholder_2"
            ]
        ),
        
    ]
}

//
//  SizeConstants.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct SizeConstants {
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 1.8)
    }
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

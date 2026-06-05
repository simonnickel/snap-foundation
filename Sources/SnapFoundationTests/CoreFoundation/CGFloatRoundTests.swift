//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation
import Testing
@testable import SnapFoundation

@Test func cgFloatRound() {
    // Round correct number of decimals
    #expect(CGFloat(1.234567).round(decimals: 2) == CGFloat(1.23))
    #expect(CGFloat(1.234567).round(decimals: 2) != CGFloat(1.231))

    // Respect rounding rule
    #expect(CGFloat(1.234567).round(decimals: 2, rule: .up) == CGFloat(1.24))

    // Lower edge
    #expect(CGFloat(1.234567).round(decimals: 0) == CGFloat(1))

    // Upper edge
    #expect(CGFloat(1.234567).round(decimals: 10) == CGFloat(1.234567))

    // Other edge
    #expect(CGFloat(0).round(decimals: 1) == CGFloat())
}

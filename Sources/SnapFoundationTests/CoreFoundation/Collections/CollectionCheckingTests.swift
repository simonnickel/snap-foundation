//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Testing
@testable import SnapFoundation

@Test func collectionChecking() {
    let arrayEmpty: [Int] = []
    let array: [Int] = [1, 2, 3]

    #expect(arrayEmpty[checking: 0] == nil)

    #expect(array[checking: 0] != nil)
    #expect(array[checking: array.count - 1] != nil)
    #expect(array[checking: -1] == nil)
    #expect(array[checking: array.count] == nil)
}

//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Testing
@testable import SnapFoundation


@Test func dictionaryUpdated() {
    let original: [String: Int] = ["a": 1, "b": 2]
    let updated = original.updated(key: "a", with: 99)

    #expect(updated["a"] == 99)
    #expect(updated["b"] == 2)
    #expect(original["a"] == 1)
}

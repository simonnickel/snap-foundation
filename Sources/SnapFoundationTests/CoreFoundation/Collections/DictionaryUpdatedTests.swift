//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Testing
@testable import SnapFoundation

@Test func dictionaryUpdatedExistingKey() {
    let original: [String: Int] = ["a": 1, "b": 2]
    let updated = original.updated(key: "a", with: 99)

    #expect(updated["a"] == 99)
    #expect(updated["b"] == 2)
    #expect(original["a"] == 1)
}

@Test func dictionaryUpdatedNewKey() {
    let original: [String: Int] = ["a": 1]
    let updated = original.updated(key: "b", with: 2)

    #expect(updated["b"] == 2)
    #expect(updated.count == 2)
    #expect(original["b"] == nil)
}

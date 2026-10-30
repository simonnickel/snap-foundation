//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Testing
@testable import SnapFoundation

@Test func setInserted() {
    let someSet: Set<String> = ["Value 1"]
    let someSetInserted = someSet.inserted("Value 2")
    let someSetInsertedMultiple = someSet.inserted(["Value 2", "Value 3"])

    #expect(someSet.count == 1)
    #expect(someSetInserted.count == 2)
    #expect(someSetInsertedMultiple.count == 3)
    #expect(someSet != someSetInserted)
    #expect(someSet != someSetInsertedMultiple)
}

@Test func setInsertedDuplicate() {
    let someSet: Set<String> = ["Value 1"]
    let someSetInserted = someSet.inserted("Value 1")

    #expect(someSetInserted.count == 1)
    #expect(someSetInserted == someSet)
}

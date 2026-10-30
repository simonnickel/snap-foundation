//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Testing
@testable import SnapFoundation

@Test func arrayUniqued() {
    let arrayEmpty: [String] = []
    let arrayUnique: [String] = ["Value 1", "Value 2"]
    let arrayDuplicates: [String] = ["Value 1", "Value 1", "Value 2", "Value 2", "Value 3"]
    let arrayDuplicatesExpectedUniqued: [String] = ["Value 1", "Value 2", "Value 3"]

    #expect(arrayEmpty == arrayEmpty.uniqued())
    #expect(arrayUnique == arrayUnique.uniqued())
    #expect(arrayDuplicates != arrayDuplicates.uniqued())
    #expect(arrayDuplicates.count != arrayDuplicates.uniqued().count)
    #expect(arrayDuplicates.uniqued() == arrayDuplicatesExpectedUniqued)
}

@Test func arrayAppendUnique() {
    var arrayUnique: [String] = ["Value 1", "Value 2"]
    arrayUnique.appendUnique("Value 1")
    #expect(arrayUnique.count == 2)

    let arrayAppended: [String] = ["Value 1", "Value 2", "Value 3"]
    arrayUnique.appendUnique(arrayAppended)

    #expect(arrayUnique.count == 3)
    #expect(arrayUnique == arrayAppended)
}

@Test func arrayAppendUniquePreservesExistingDuplicates() {
    // appendUnique does not clean up duplicates already in the array
    var arrayWithDuplicates: [String] = ["Value 1", "Value 1", "Value 2"]
    arrayWithDuplicates.appendUnique("Value 2")
    #expect(arrayWithDuplicates.count == 3)
    #expect(arrayWithDuplicates == ["Value 1", "Value 1", "Value 2"])
}

@Test func arrayAppendedUnique() {
    let arrayUnique: [String] = ["Value 1", "Value 2"]
    let arrayDuplicates: [String] = ["Value 1", "Value 1", "Value 2", "Value 2", "Value 3"]

    #expect(arrayUnique.appendedUnique(arrayUnique).count == 2)
    #expect(arrayUnique.appendedUnique("Value 1").count == 2)
    #expect(arrayUnique == arrayUnique.appendedUnique(arrayUnique))
    #expect(arrayUnique != arrayUnique.appendedUnique(arrayDuplicates))
    #expect(arrayUnique.appendedUnique(arrayDuplicates).count == 3)
}

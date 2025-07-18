//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation
import Testing

@Test("CGSize adjusted width")
func testCGSizeAdjustedWidth() async throws {
    let size = CGSize(width: 100, height: 100).adjusted(width: 10)
    #expect(size == CGSize(width: 10, height: 100))
}

@Test("CGSize adjusted height")
func testCGSizeAdjustedHeight() async throws {
    let size = CGSize(width: 100, height: 100).adjusted(height: 10)
    #expect(size == CGSize(width: 100, height: 10))
}

@Test("CGSize added width")
func testCGSizeAddedWidth() async throws {
    let size = CGSize(width: 100, height: 100).added(width: 10)
    #expect(size == CGSize(width: 110, height: 100))
}

@Test("CGSize adjusted height")
func testCGSizeAddedHeight() async throws {
    let size = CGSize(width: 100, height: 100).added(height: 10)
    #expect(size == CGSize(width: 100, height: 110))
}

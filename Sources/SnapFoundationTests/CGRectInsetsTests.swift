//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Testing
import SwiftUI
@testable import SnapFoundation

enum TestConst_CGRectInsets {
    static let base = CGRect(x: 100, y: 100, width: 100, height: 100)

    static let insetsAll = EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
    static let insetsTop = EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
    static let insetsBottom = EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)
    static let insetsLeft = EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
    static let insetsRight = EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10)
    static let insetsLarge = EdgeInsets(top: 110, leading: 0, bottom: 0, trailing: 0)

    static let resultAll = CGRect(x: 110, y: 110, width: 80, height: 80)
    static let resultTop = CGRect(x: 100, y: 110, width: 100, height: 90)
    static let resultBottom = CGRect(x: 100, y: 100, width: 100, height: 90)
    static let resultLeft = CGRect(x: 110, y: 100, width: 90, height: 100)
    static let resultRight = CGRect(x: 100, y: 100, width: 90, height: 100)
    static let resultLarge = CGRect(x: 100, y: 210, width: 100, height: -10)
}

/// Does not test for locale specific `characterDirection`.
@Test("CGRect inset reference")
func testCGRectEdgeInset() async throws {
    let rect = TestConst_CGRectInsets.base

    let rectResultAll = rect.inset(by: TestConst_CGRectInsets.insetsAll)
    let rectResultTop = rect.inset(by: TestConst_CGRectInsets.insetsTop)
    let rectResultBottom = rect.inset(by: TestConst_CGRectInsets.insetsBottom)
    let rectResultLeft = rect.inset(by: TestConst_CGRectInsets.insetsLeft)
    let rectResultRight = rect.inset(by: TestConst_CGRectInsets.insetsRight)
    let rectResultLarge = rect.inset(by: TestConst_CGRectInsets.insetsLarge)

    #expect(rectResultAll == TestConst_CGRectInsets.resultAll)
    #expect(rectResultTop == TestConst_CGRectInsets.resultTop)
    #expect(rectResultBottom == TestConst_CGRectInsets.resultBottom)
    #expect(rectResultLeft == TestConst_CGRectInsets.resultLeft)
    #expect(rectResultRight == TestConst_CGRectInsets.resultRight)
    #expect(rectResultLarge == TestConst_CGRectInsets.resultLarge)
}


#if canImport(UIKit)

// This is not actually testing anything, just a reference to see what the UIKit implementation is doing.
@Test("CGRect inset reference with UIEdgeInsets")
func testCGRectUIEdgeInset() async throws {
    let rect = TestConst_CGRectInsets.base

    let rectResultAll = rect.inset(by: TestConst_CGRectInsets.insetsAll.uiEdgeInsetsFollowingHorizontalDirection)
    let rectResultTop = rect.inset(by: TestConst_CGRectInsets.insetsTop.uiEdgeInsetsFollowingHorizontalDirection)
    let rectResultBottom = rect.inset(by: TestConst_CGRectInsets.insetsBottom.uiEdgeInsetsFollowingHorizontalDirection)
    let rectResultLeft = rect.inset(by: TestConst_CGRectInsets.insetsLeft.uiEdgeInsetsFollowingHorizontalDirection)
    let rectResultRight = rect.inset(by: TestConst_CGRectInsets.insetsRight.uiEdgeInsetsFollowingHorizontalDirection)
    let rectResultLarge = rect.inset(by: TestConst_CGRectInsets.insetsLarge.uiEdgeInsetsFollowingHorizontalDirection)

    #expect(rectResultAll == TestConst_CGRectInsets.resultAll)
    #expect(rectResultTop == TestConst_CGRectInsets.resultTop)
    #expect(rectResultBottom == TestConst_CGRectInsets.resultBottom)
    #expect(rectResultLeft == TestConst_CGRectInsets.resultLeft)
    #expect(rectResultRight == TestConst_CGRectInsets.resultRight)
    #expect(rectResultLarge == TestConst_CGRectInsets.resultLarge)
}

#endif

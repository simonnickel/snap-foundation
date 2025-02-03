//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

#if canImport(UIKit)

import Testing
import SwiftUI
@testable import SnapFoundation

@Test("EdgeInset convenience init .zero")
func testConvenvienceInitZero() async throws {
    let insetZero = EdgeInsets.zero
    #expect(insetZero.top == 0)
    #expect(insetZero.leading == 0)
    #expect(insetZero.trailing == 0)
    #expect(insetZero.bottom == 0)
}

@Test("EdgeInset convenience init .zero")
func testConvenvienceInitValue() async throws {
    let insetZero = EdgeInsets(1)
    #expect(insetZero.top == 1)
    #expect(insetZero.leading == 1)
    #expect(insetZero.trailing == 1)
    #expect(insetZero.bottom == 1)
}

@Test("EdgeInset convenience init horizontal/vertical axis")
func testConvenvienceInitAxis() async throws {
    let insetZero = EdgeInsets(horizontal: 1, vertical: 2)
    #expect(insetZero.top == 2)
    #expect(insetZero.leading == 1)
    #expect(insetZero.trailing == 1)
    #expect(insetZero.bottom == 2)
}

@Test("EdgeInset to UIEdgeInset")
func convertEdgeInset() async throws {
    let edgeInset = EdgeInsets(top: 1, leading: 2, bottom: 3, trailing: 4)
    let uiEdgeInset = edgeInset.uiEdgeInsetsFollowingHorizontalDirection
    #expect(edgeInset.top == uiEdgeInset.top)
    #expect(edgeInset.leading == uiEdgeInset.leading)
    #expect(edgeInset.trailing == uiEdgeInset.trailing)
    #expect(edgeInset.bottom == uiEdgeInset.bottom)
}

@Test("UIEdgeInset to EdgeInset")
func convertUIEdgeInset() async throws {
    let uiEdgeInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
    let edgeInset = uiEdgeInset.swiftUIEdgeInsetsFollowingHorizontalDirection
    #expect(edgeInset.top == uiEdgeInset.top)
    #expect(edgeInset.leading == uiEdgeInset.leading)
    #expect(edgeInset.trailing == uiEdgeInset.trailing)
    #expect(edgeInset.bottom == uiEdgeInset.bottom)
}

#endif

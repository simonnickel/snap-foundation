//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

extension Font.Design: @retroactive CaseIterable {

    public static var allCases: [Font.Design] {
        [
            .default,
            .rounded,
            .monospaced,
            .serif
        ]
    }

}

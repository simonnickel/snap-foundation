//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

extension Font.Width: @retroactive CaseIterable {

    public static var allCases: [Font.Width] {
        [
            .standard,
            .compressed,
            .condensed,
            .expanded
        ]
    }

}

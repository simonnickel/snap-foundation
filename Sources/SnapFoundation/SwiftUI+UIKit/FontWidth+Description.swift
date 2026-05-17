//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

// Conforming `@retroactive CustomStringConvertible` causes a crash; expose `description` as a plain property instead.
extension Font.Width {
    public var description: String {
        switch self {
            case .compressed: "compressed"
            case .condensed: "condensed"
            case .standard: "standard"
            case .expanded: "expanded"
            default: "unknown"
        }
    }
}


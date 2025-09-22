//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

// For some reason it's crashing when adding `: @retroactive CustomStringConvertible`.
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


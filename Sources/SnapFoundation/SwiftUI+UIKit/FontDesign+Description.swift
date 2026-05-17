//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

// Conforming `@retroactive CustomStringConvertible` causes a crash; expose `description` as a plain property instead.
extension Font.Design {
    public var description: String {
        "\(self)"
    }
}

//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

// For some reason it's crashing when adding `: @retroactive CustomStringConvertible`.
extension Font.Design {
    public var description: String {
        "\(self)"
    }
}

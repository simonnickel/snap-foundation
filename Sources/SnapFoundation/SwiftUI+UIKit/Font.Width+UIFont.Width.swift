//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

#if canImport(UIKit)
import UIKit

extension Font.Width {
    public var uiFontWidth: UIFont.Width {
        switch self {
            case .compressed: .compressed
            case .condensed: .condensed
            case .expanded: .expanded
            case .standard: .standard
            default: .standard
        }
    }
}

extension UIFont.Width {
    public var fontWidth: Font.Width {
        switch self {
            case .compressed: .compressed
            case .condensed: .condensed
            case .expanded: .expanded
            case .standard: .standard
            default: .standard
        }
    }
}
#endif


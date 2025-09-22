//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

#if canImport(UIKit)
import UIKit

extension Font.Design {
    public var uiFontDesign: UIFontDescriptor.SystemDesign {
        switch self {
            case .default: .default
            case .monospaced: .monospaced
            case .rounded: .rounded
            case .serif: .serif
            @unknown default: .default
        }
    }
}

extension UIFontDescriptor.SystemDesign {
    public var fontDesign: Font.Design {
        switch self {
            case .default: .default
            case .monospaced: .monospaced
            case .rounded: .rounded
            case .serif: .serif
            default: .default
        }
    }
}
#endif

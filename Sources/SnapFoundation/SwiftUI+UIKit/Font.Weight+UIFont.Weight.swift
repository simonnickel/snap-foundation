//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

#if canImport(UIKit)
import UIKit

extension Font.Weight {
    public var uiFontWeight: UIFont.Weight {
        switch self {
            case .ultraLight: .ultraLight
            case .thin: .thin
            case .light: .light
            case .regular: .regular
            case .medium: .medium
            case .semibold: .semibold
            case .bold: .bold
            case .heavy: .heavy
            case .black: .black
            default: .regular
        }
    }
}

extension UIFont.Weight {
    public var fontWeight: Font.Weight {
        switch self {
            case .ultraLight: .ultraLight
            case .thin: .thin
            case .light: .light
            case .regular: .regular
            case .medium: .medium
            case .semibold: .semibold
            case .bold: .bold
            case .heavy: .heavy
            case .black: .black
            default: .regular
        }
    }
}
#endif


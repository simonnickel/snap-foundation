//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

extension EdgeInsets {
    
    static var zero: Self { .init(top: 0, leading: 0, bottom: 0, trailing: 0) }
    
    init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
    }
    
}


#if canImport(UIKit)

import UIKit

extension EdgeInsets {
    
    /// Converted into `UIKit.UIEdgeInsets` using the `characterDirection` of current locale to map leading/trailing to left/right.
    var uiEdgeInsetsFollowingHorizontalDirection: UIEdgeInsets {
        switch Locale.current.language.characterDirection {
            case .leftToRight: UIEdgeInsets(top: top, left: leading, bottom: bottom, right: trailing)
            case .rightToLeft: UIEdgeInsets(top: top, left: trailing, bottom: bottom, right: leading)

            default: UIEdgeInsets(top: top, left: leading, bottom: bottom, right: trailing)
        }
    }
    
}

extension UIEdgeInsets {
    
    /// Converted into `SwiftUI.EdgeInsets` using the `characterDirection` of current locale to map leading/trailing to left/right.
    var swiftUIEdgeInsetsFollowingHorizontalDirection: EdgeInsets {
        EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
    
    /// Uses `characterDirection` of current locale to map leading to left/right.
    var leading: CGFloat {
        switch Locale.current.language.characterDirection {
            case .leftToRight: left
            case .rightToLeft: right

            default: left
        }
    }
    
    /// Uses `characterDirection` of current locale to map trailing to left/right.
    var trailing: CGFloat {
        switch Locale.current.language.characterDirection {
            case .leftToRight: right
            case .rightToLeft: left

            default: right
        }
    }
    
}

#endif

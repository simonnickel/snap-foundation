//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation
import SwiftUI

extension CGRect {

    /// A pure SwiftUI implemenation following the UIKit (UIEdgeInset) variant.
    /// Adjusts a rectangle by the given edge insets.
    /// 
    /// This inline function increments the origin of rect and decrements the size of rect by applying the appropriate member values of the UIEdgeInsets structure.
    func inset(by insets: EdgeInsets) -> CGRect {
        switch Locale.current.language.characterDirection {

            case .rightToLeft: CGRect(
                x: origin.x + insets.trailing,
                y: origin.y + insets.top,
                width: width - insets.leading - insets.trailing,
                height: height - insets.top - insets.bottom
            )

            // .leftToRight
            default: CGRect(
                x: origin.x + insets.leading,
                y: origin.y + insets.top,
                width: width - insets.leading - insets.trailing,
                height: height - insets.top - insets.bottom
            )

        }
    }

}

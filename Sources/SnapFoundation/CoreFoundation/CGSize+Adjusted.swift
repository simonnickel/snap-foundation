//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation

extension CGSize {
    
    public func adjusted(width: CGFloat) -> Self {
        Self(width: width, height: self.height)
    }
    
    public func adjusted(height: CGFloat) -> Self {
        Self(width: self.width, height: height)
    }
    
    public func added(width: CGFloat) -> Self {
        Self(width: self.width + width, height: self.height)
    }
    
    public func added(height: CGFloat) -> Self {
        Self(width: self.width, height: self.height + height)
    }
    
}

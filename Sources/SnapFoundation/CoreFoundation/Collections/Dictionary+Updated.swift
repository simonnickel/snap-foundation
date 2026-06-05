//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation

extension Dictionary {
    
    func updated(key: Key, with value: Value) -> Self {
        var copy = self
        copy[key] = value
        return copy
    }
    
}

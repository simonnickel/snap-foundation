//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation
import OSLog

public extension Logger {
	
	/// Custom init with `bundleIdentifier` as subsystem.
	init(category: String) {
		self.init(subsystem: Self.defaultSubsystem, category: category)
	}
	
	/// Custom init with `bundleIdentifier` as subsystem and the given `type` as category.
	/// - Parameter type: The type to use as category.
	init<T>(forType type: T.Type) {
		let category = String(describing: type)
		self.init(subsystem: Self.defaultSubsystem, category: category)
	}
	
	/// Falls back to the process name, since `Bundle.main` has no `bundleIdentifier` in some contexts, such as `swift test`.
	private static var defaultSubsystem: String {
		Bundle.main.bundleIdentifier ?? ProcessInfo.processInfo.processName
	}
	
}

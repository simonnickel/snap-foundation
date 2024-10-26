//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import Foundation

public extension ProcessInfo {

	/// True if running as `Preview`.
	static var isPreview: Bool {
		ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
	}
	
	/// True if running as `Test`.
	static var isTest: Bool {
		return ProcessInfo.processInfo.environment.keys.contains("XCTestConfigurationFilePath")
	}
	
}

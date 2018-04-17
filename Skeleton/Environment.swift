//
//  Environment.swift
//  Skeleton
//
//  Created by Work on 4/16/18.
//  Copyright © 2018 LegnaFilloy. All rights reserved.
//

import Foundation

private enum PlistKey {
	
	case ServerURL
	
	func value() -> String {
		switch self {
		case .ServerURL:
			return "server_url"
		}
	}
}
	
public struct Environment {
	
	fileprivate var infoDict: [String: Any]  {
		get {
			if let dict = Bundle.main.infoDictionary {
				return dict
			}else {
				fatalError("Plist file not found")
			}
		}
	}
	
	private func configuration(_ key: PlistKey) -> String? {
		switch key {
		case .ServerURL:
			return infoDict[PlistKey.ServerURL.value()] as? String
		}
  	}
	
	public func getServerUrl() -> String? {
		return configuration(PlistKey.ServerURL)
	}
	
}

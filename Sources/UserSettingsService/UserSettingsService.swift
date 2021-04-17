//
//  UserSettings.swift
//  SBTSwiftProject
//
//  Created by Константин Богданов on 26.10.2020.
//  Copyright © 2020 Константин Богданов. All rights reserved.
//

import UserSettingsAbstration
import Foundation

/// Сервис по хранению настроек пользователя
public final class UserSettingsService: UserSettingsServiceProtocol {

	private let userDefaults: UserDefaults

	/// Инициализатор
	/// - Parameter userDefaults: UserDefaults
	public init(userDefaults: UserDefaults) {
		self.userDefaults = userDefaults
	}

	public func set(value: Any, for key: String) {
		userDefaults.set(value, forKey: key)
	}

	public func getValue(for key: String) -> Any? {
		return userDefaults.value(forKey: key)
	}
}

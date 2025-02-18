//
//  ModelSet.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public protocol ModelSet: Identifiable, Hashable {
	
	static var models: [HuggingFaceModel] { get }
	static var name: String { get }
	static var id: String { get }
	
}

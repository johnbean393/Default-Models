//
//  ModelSet.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public protocol ModelSet: Identifiable {
	
	static var models: [HuggingFaceModel] { get }
	
}

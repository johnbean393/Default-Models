//
//  Ministral.swift
//  DefaultModels
//
//  Created by John Bean on 12/27/24.
//

import Foundation

public class Ministral: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: Ministral, rhs: Ministral) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "Ministral"
	
	/// An array of `Ministral` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Ministral.ministral_8b
	]
	
	/// Static constant for the Ministral 8B model
	private static let ministral_8b: HuggingFaceModel = HuggingFaceModel(
		params: 8,
		urlString: "https://huggingface.co/bartowski/Ministral-8B-Instruct-2410-GGUF/resolve/main/Ministral-8B-Instruct-2410-Q8_0.gguf",
		minRam: 18,
		minGpuTflops: 6.8,
		mmluScore: 65.0
	)
	
}

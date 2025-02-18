//
//  MistralSmall.swift
//  DefaultModels
//
//  Created by John Bean on 1/31/25.
//

import Foundation

public class MistralSmall: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: MistralSmall, rhs: MistralSmall) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "Mistral Small"
	
	/// An array of `MistralSmall` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		MistralSmall.mistral_small_24b
	]
	
	/// Static constant for the Mistral Small 24B model
	private static let mistral_small_24b: HuggingFaceModel = HuggingFaceModel(
		name: "Mistral-Small-24B-Instruct-2501",
		params: 24,
		urlString: "https://huggingface.co/bartowski/Mistral-Small-24B-Instruct-2501-GGUF/resolve/main/Mistral-Small-24B-Instruct-2501-IQ4_XS.gguf",
		minRam: 32,
		minGpuTflops: 13.6,
		mmluScore: 81,
		specializations: []
	)
	
}

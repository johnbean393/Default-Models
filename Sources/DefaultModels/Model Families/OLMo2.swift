//
//  OLMo2.swift
//  DefaultModels
//
//  Created by John Bean on 12/30/24.
//

import Foundation

public class OLMo2: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: OLMo2, rhs: OLMo2) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "OLMo 2"
	
	/// An array of `OLMo2` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		OLMo2.olmo_2_7b,
		OLMo2.olmo_2_13b
	]
	
	/// Static constant for the OLMo 2 7B model
	private static let olmo_2_7b: HuggingFaceModel = HuggingFaceModel(
		name: "OLMo-2-1124-7B-Instruct",
		params: 7,
		urlString: "https://huggingface.co/bartowski/OLMo-2-1124-7B-Instruct-GGUF/resolve/main/OLMo-2-1124-7B-Instruct-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 5.3,
		mmluScore: 63.7,
		specializations: [.fullyOpenSource]
	)
	
	/// Static constant for the OLMo 2 13B model
	private static let olmo_2_13b: HuggingFaceModel = HuggingFaceModel(
		name: "OLMo-2-1124-13B-Instruct",
		params: 14,
		urlString: "https://huggingface.co/bartowski/OLMo-2-1124-13B-Instruct-GGUF/resolve/main/OLMo-2-1124-13B-Instruct-IQ4_XS.gguf",
		minRam: 24,
		minGpuTflops: 13.6,
		mmluScore: 67.5,
		specializations: [.fullyOpenSource]
	)
	
}

//
//  Gemma2.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class Gemma2: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: Gemma2, rhs: Gemma2) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "Gemma 2"
	
	/// The model family's description, in type 	`String`
	public static let description: String = "Gemma 2 is a family of second generation open models from Google, built from the same technology used to create the Gemini models."
	
	/// An array of `Gemma 2` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Gemma2.gemma_2_2b,
		Gemma2.gemma_2_9b,
		Gemma2.gemma_2_27b
	]
	
	/// Static constant for the Gemma 2 2B model
	private static let gemma_2_2b: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-2-2B-it",
		params: 2,
		urlString: "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF/resolve/main/gemma-2-2b-it-Q8_0.gguf",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 52.2,
		modelFamily: .gemma2
	)
	
	/// Static constant for the Gemma 2 9B model
	private static let gemma_2_9b: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-2-9B-it",
		params: 9,
		urlString: "https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 7.4,
		mmluScore: 52.2,
        intelligenceScore: 22,
		modelFamily: .gemma2
	)
	
	/// Static constant for the Gemma 2 27B model
	private static let gemma_2_27b: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-2-27B-it",
		params: 27,
		urlString: "https://huggingface.co/bartowski/gemma-2-27b-it-GGUF/resolve/main/gemma-2-27b-it-IQ4_XS.gguf",
		minRam: 32,
		minGpuTflops: 16.2,
		mmluScore: 52.2,
		modelFamily: .gemma2
	)
	
}

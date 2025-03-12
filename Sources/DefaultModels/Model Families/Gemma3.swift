//
//  Gemma3.swift
//  DefaultModels
//
//  Created by John Bean on 3/13/25.
//

import Foundation

public class Gemma3: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: Gemma3, rhs: Gemma3) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "Gemma 3"
	
	/// The model family's description, in type 	`String`
	public static let description: String = "Gemma 3 is a family of lightweight, state of the art third generation open models from Google."
	
	/// An array of `Gemma 3` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Gemma3.gemma_3_4b_q4,
		Gemma3.gemma_3_4b_q8,
		Gemma3.gemma_3_12b,
		Gemma3.gemma_3_27b
	]
	
	/// Static constant for the Gemma 3 4B model at 4 bit quantization
	private static let gemma_3_4b_q4: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-3-4B-it (IQ4_XS)",
		params: 4,
		urlString: "https://huggingface.co/bartowski/google_gemma-3-4b-it-GGUF/resolve/main/google_gemma-3-4b-it-IQ4_XS.gguf",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 59.6, // TODO: Obtain scores for the instruction tuned model
		modelFamily: .gemma3
	)
	
	/// Static constant for the Gemma 3 4B model at 8 bit quantization
	private static let gemma_3_4b_q8: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-3-4B-it (Q8_0)",
		params: 4,
		urlString: "https://huggingface.co/bartowski/google_gemma-3-4b-it-GGUF/resolve/main/google_gemma-3-4b-it-Q8_0.gguf",
		minRam: 12,
		minGpuTflops: 2.6,
		mmluScore: 59.6, // TODO: Obtain scores for the instruction tuned model
		modelFamily: .gemma3
	)
	
	/// Static constant for the Gemma 3 12B model
	private static let gemma_3_12b: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-3-12B-it",
		params: 12,
		urlString: "https://huggingface.co/bartowski/google_gemma-3-12b-it-GGUF/resolve/main/google_gemma-3-12b-it-IQ4_XS.gguf",
		minRam: 24,
		minGpuTflops: 13.6,
		mmluScore: 74.5, // TODO: Obtain scores for the instruction tuned model
		modelFamily: .gemma3
	)
	
	/// Static constant for the Gemma 3 27B model
	private static let gemma_3_27b: HuggingFaceModel = HuggingFaceModel(
		name: "Gemma-3-27B-it",
		params: 27,
		urlString: "https://huggingface.co/bartowski/google_gemma-3-27b-it-GGUF/resolve/main/google_gemma-3-27b-it-IQ4_XS.gguf",
		minRam: 32,
		minGpuTflops: 16.2,
		mmluScore: 78.6, // TODO: Obtain scores for the instruction tuned model
		modelFamily: .gemma3
	)
	
}

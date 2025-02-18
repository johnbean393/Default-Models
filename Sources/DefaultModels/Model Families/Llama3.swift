//
//  Llama3.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class Llama3: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: Llama3, rhs: Llama3) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "Llama 3"
	
	/// The model family's description, in type 	`String`
	public static let description: String = "A family of large language models (LLMs) developed by Meta, with pretrained and instruction tuned generative text models."
	
	/// An array of `Llama 3` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Llama3.llama_3pt1_8b,
		Llama3.llama_3pt2_1b,
		Llama3.llama_3pt2_3b
	]

	/// Static constant for the Llama 3.1 8B model
	private static let llama_3pt1_8b: HuggingFaceModel = HuggingFaceModel(
		name: "Llama-3.1-8B-Instruct",
		params: 8,
		urlString: "https://huggingface.co/bartowski/Meta-Llama-3.1-8B-Instruct-GGUF/resolve/main/Meta-Llama-3.1-8B-Instruct-Q8_0.gguf",
		minRam: 18,
		minGpuTflops: 6.8,
		mmluScore: 66.6,
		modelFamily: .llama3
	)
	
	/// Static constant for the Llama 3.2 1B model
	private static let llama_3pt2_1b: HuggingFaceModel = HuggingFaceModel(
		name: "Llama-3.2-1B-Instruct",
		params: 1,
		urlString: "https://huggingface.co/bartowski/Llama-3.2-1B-Instruct-GGUF/resolve/main/Llama-3.2-1B-Instruct-Q8_0.gguf",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 49.3,
		modelFamily: .llama3
	)
	
	/// Static constant for the Llama 3.2 3B model
	private static let llama_3pt2_3b: HuggingFaceModel = HuggingFaceModel(
		name: "Llama-3.2-3B-Instruct",
		params: 3,
		urlString: "https://huggingface.co/bartowski/Llama-3.2-3B-Instruct-GGUF/resolve/main/Llama-3.2-3B-Instruct-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 3.5,
		mmluScore: 63.4,
		modelFamily: .llama3
	)
	
}

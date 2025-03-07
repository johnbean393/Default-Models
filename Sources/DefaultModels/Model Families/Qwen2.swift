//
//  Qwen2.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class Qwen2: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: Qwen2, rhs: Qwen2) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "Qwen 2"
	
	/// The model family's description, in type 	`String`
	public static let description: String = "A family of state of the art models developed by Alibaba Cloud, with performance besting all other open models in its size class."
	
	/// An array of `Qwen 2` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Qwen2.qwen_2Pt5_1pt5b,
		Qwen2.qwen_2pt5_3b,
		Qwen2.qwen_2pt5_7b,
		Qwen2.qwen_2pt5_14b,
		Qwen2.qwen_2pt5_32b,
		Qwen2.qwen_2pt5_7b_coder,
		Qwen2.qwen_2pt5_14b_coder,
		Qwen2.qwen_2pt5_32b_coder,
		Qwen2.qwen_2pt5_7b_math,
		Qwen2.qwq_32b
	]
	
	/// Static constant for the Qwen 2.5 1.5B model
	private static let qwen_2Pt5_1pt5b: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-1.5B-Instruct",
		params: 1.5,
		urlString: "https://huggingface.co/Qwen/Qwen2.5-1.5B-Instruct-GGUF/resolve/main/qwen2.5-1.5b-instruct-q8_0.gguf",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 60.9,
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 3B model
	private static let qwen_2pt5_3b: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-3B-Instruct",
		params: 3,
		urlString: "https://huggingface.co/Qwen/Qwen2.5-3B-Instruct-GGUF/resolve/main/qwen2.5-3b-instruct-q8_0.gguf",
		minRam: 12,
		minGpuTflops: 2.6,
		mmluScore: 65.6,
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 7B model
	private static let qwen_2pt5_7b: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-7B-Instruct",
		params: 7,
		urlString: "https://huggingface.co/bartowski/Qwen2.5-7B-Instruct-GGUF/resolve/main/Qwen2.5-7B-Instruct-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 5.3,
		mmluScore: 70.3,
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 14B model
	private static let qwen_2pt5_14b: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-14B-Instruct",
		params: 14,
		urlString: "https://huggingface.co/bartowski/Qwen2.5-14B-Instruct-GGUF/resolve/main/Qwen2.5-14B-Instruct-IQ4_XS.gguf",
		minRam: 24,
		minGpuTflops: 16.2,
		mmluScore: 79.7,
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 32B model
	private static let qwen_2pt5_32b: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-32B-Instruct",
		params: 32,
		urlString: "https://huggingface.co/bartowski/Qwen2.5-32B-Instruct-GGUF/resolve/main/Qwen2.5-32B-Instruct-IQ4_XS.gguf",
		minRam: 36,
		minGpuTflops: 18.4,
		mmluScore: 83.3,
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 7B Coder model
	private static let qwen_2pt5_7b_coder: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-Coder-7B-Instruct",
		params: 7,
		urlString: "https://huggingface.co/bartowski/Qwen2.5.1-Coder-7B-Instruct-GGUF/resolve/main/Qwen2.5.1-Coder-7B-Instruct-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 6.7,
		mmluScore: 70.3,
		specializations: [.coding],
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 14B Coder model
	private static let qwen_2pt5_14b_coder: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-Coder-14B-Instruct",
		params: 14,
		urlString: "https://huggingface.co/bartowski/Qwen2.5-Coder-14B-Instruct-GGUF/resolve/main/Qwen2.5-Coder-14B-Instruct-IQ4_XS.gguf",
		minRam: 24,
		minGpuTflops: 16.2,
		mmluScore: 79.7,
		specializations: [.coding],
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 32B Coder model
	private static let qwen_2pt5_32b_coder: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-Coder-32B-Instruct",
		params: 32,
		urlString: "https://huggingface.co/bartowski/Qwen2.5-Coder-32B-Instruct-GGUF/resolve/main/Qwen2.5-Coder-32B-Instruct-IQ4_XS.gguf",
		minRam: 36,
		minGpuTflops: 16.2,
		mmluScore: 83.3,
		specializations: [.coding],
		modelFamily: .qwen2
	)
	
	/// Static constant for the Qwen 2.5 7B Math model
	private static let qwen_2pt5_7b_math: HuggingFaceModel = HuggingFaceModel(
		name: "Qwen2.5-Math-7B-Instruct",
		params: 7,
		urlString: "https://huggingface.co/bartowski/Qwen2.5-Math-7B-Instruct-GGUF/resolve/main/Qwen2.5-Math-7B-Instruct-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 6.7,
		mmluScore: 70.3,
		specializations: [.math],
		modelFamily: .qwen2
	)
	
	/// Static constant for the QwQ 32B model
	private static let qwq_32b: HuggingFaceModel = HuggingFaceModel(
		name: "QwQ-32B-Preview",
		params: 32,
		urlString: "https://huggingface.co/bartowski/Qwen_QwQ-32B-GGUF/resolve/main/Qwen_QwQ-32B-IQ4_XS.gguf",
		minRam: 36,
		minGpuTflops: 16.2,
		mmluScore: 83.3,
		specializations: [.reasoning],
		modelFamily: .qwen2
	)
	
}

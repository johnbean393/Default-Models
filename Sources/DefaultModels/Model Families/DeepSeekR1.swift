//
//  DeepSeekR1.swift
//  DefaultModels
//
//  Created by John Bean on 2/18/25.
//

import Foundation

public class DeepSeekR1: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: DeepSeekR1, rhs: DeepSeekR1) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "DeepSeek R1"
	
	/// An array of `DeepSeek R1` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		DeepSeekR1.deepseek_r1_distill_qwen_2Pt5_1pt5b,
		DeepSeekR1.deepseek_r1_distill_qwen_2pt5_7b,
		DeepSeekR1.deepseek_r1_distill_llama_3pt1_8b,
		DeepSeekR1.deepseek_r1_distill_qwen_2pt5_14b,
		DeepSeekR1.deepseek_r1_distill_qwen_2pt5_32b
	]
	
	/// Static constant for the DeepSeek-R1 Distill Qwen 2.5 1.5B model
	private static let deepseek_r1_distill_qwen_2Pt5_1pt5b: HuggingFaceModel = HuggingFaceModel(
		name: "DeepSeek-R1-Distill-Qwen-1.5B",
		params: 1.5,
		urlString: "https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-1.5B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-1.5B-Q8_0.gguf",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 60.9,
		specializations: [.reasoning],
		modelFamily: .deepseekR1
	)
	
	/// Static constant for the DeepSeek-R1 Distill Qwen 2.5 7B model
	private static let deepseek_r1_distill_qwen_2pt5_7b: HuggingFaceModel = HuggingFaceModel(
		name: "DeepSeek-R1-Distill-Qwen-7B",
		params: 7,
		urlString: "https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-7B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-7B-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 5.3,
		mmluScore: 70.3,
		specializations: [.reasoning],
		modelFamily: .deepseekR1
	)
	
	/// Static constant for the DeepSeek-R1 Distill Llama 3.1 8B model
	private static let deepseek_r1_distill_llama_3pt1_8b: HuggingFaceModel = HuggingFaceModel(
		name: "DeepSeek-R1-Distill-Llama-8B",
		params: 8,
		urlString: "https://huggingface.co/bartowski/DeepSeek-R1-Distill-Llama-8B-GGUF/resolve/main/DeepSeek-R1-Distill-Llama-8B-Q8_0.gguf",
		minRam: 18,
		minGpuTflops: 6.8,
		mmluScore: 66.6,
		specializations: [.reasoning],
		modelFamily: .deepseekR1
	)
	
	/// Static constant for the DeepSeek-R1 Distill Qwen 2.5 14B model
	private static let deepseek_r1_distill_qwen_2pt5_14b: HuggingFaceModel = HuggingFaceModel(
		name: "DeepSeek-R1-Distill-Qwen-14B",
		params: 14,
		urlString: "https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-14B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-14B-IQ4_XS.gguf",
		minRam: 24,
		minGpuTflops: 16.2,
		mmluScore: 79.7,
		specializations: [.reasoning],
		modelFamily: .deepseekR1
	)
	
	/// Static constant for the DeepSeek-R1 Distill Qwen 2.5 32B model
	private static let deepseek_r1_distill_qwen_2pt5_32b: HuggingFaceModel = HuggingFaceModel(
		name: "DeepSeek-R1-Distill-Qwen-32B",
		params: 32,
		urlString: "https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-32B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-32B-IQ4_XS.gguf",
		minRam: 36,
		minGpuTflops: 18.4,
		mmluScore: 83.3,
		specializations: [.reasoning],
		modelFamily: .deepseekR1
	)
	
}

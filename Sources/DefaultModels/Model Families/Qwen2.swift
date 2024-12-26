//
//  Qwen2.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class Qwen2: ModelSet {
	
	/// An array of `Qwen2` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Qwen2.qwen_2Pt5_1pt5b,
		Qwen2.qwen_2pt5_3b,
		Qwen2.qwen_2pt5_7b,
		Qwen2.qwen_2pt5_14b,
		Qwen2.qwq_32b_preview
	]
	
	/// Static constant for the Qwen 2.5 1.5B model
	private static let qwen_2Pt5_1pt5b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/Qwen/Qwen2.5-1.5B-Instruct-GGUF/resolve/main/qwen2.5-1.5b-instruct-q8_0.gguf?download=true",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 60.9
	)
	
	/// Static constant for the Qwen 2.5 3B model
	private static let qwen_2pt5_3b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/Qwen/Qwen2.5-3B-Instruct-GGUF/resolve/main/qwen2.5-3b-instruct-q8_0.gguf?download=true",
		minRam: 12,
		minGpuTflops: 2.6,
		mmluScore: 65.6
	)
	
	/// Static constant for the Qwen 2.5 7B model
	private static let qwen_2pt5_7b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/bartowski/Qwen2.5-7B-Instruct-GGUF/resolve/main/Qwen2.5-7B-Instruct-Q8_0.gguf?download=true",
		minRam: 16,
		minGpuTflops: 6.7,
		mmluScore: 70.3
	)
	
	/// Static constant for the Qwen 2.5 14B model
	private static let qwen_2pt5_14b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/bartowski/Qwen2.5-14B-Instruct-GGUF/resolve/main/Qwen2.5-14B-Instruct-Q8_0.gguf?download=true",
		minRam: 32,
		minGpuTflops: 16.2,
		mmluScore: 79.7
	)
	
	/// Static constant for the QwQ 32B Preview model
	private static let qwq_32b_preview: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/bartowski/QwQ-32B-Preview-GGUF/resolve/main/QwQ-32B-Preview-IQ4_XS.gguf?download=true",
		minRam: 36,
		minGpuTflops: 16.2,
		mmluScore: 83.3,
		type: .reasoning
	)
	
}

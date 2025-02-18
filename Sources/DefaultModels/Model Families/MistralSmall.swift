//
//  MistralSmall.swift
//  DefaultModels
//
//  Created by John Bean on 1/31/25.
//

import Foundation

public class MistralSmall: ModelSet {
	
	/// An array of `MistralSmall` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		MistralSmall.mistral_small_24b
	]
	
	/// Static constant for the Mistral Small 24B model
	private static let mistral_small_24b: HuggingFaceModel = HuggingFaceModel(
		params: 24,
		urlString: "https://huggingface.co/bartowski/Mistral-Small-24B-Instruct-2501-GGUF/resolve/main/Mistral-Small-24B-Instruct-2501-IQ4_XS.gguf",
		minRam: 32,
		minGpuTflops: 13.6,
		mmluScore: 81,
		specializations: []
	)
	
}

//
//  OLMo2.swift
//  DefaultModels
//
//  Created by John Bean on 12/30/24.
//

import Foundation

public class OLMo2: ModelSet {
	
	/// An array of `OLMo2` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		OLMo2.olmo_2_7b,
		OLMo2.olmo_2_13b
	]
	
	/// Static constant for the OLMo 2 7B model
	private static let olmo_2_7b: HuggingFaceModel = HuggingFaceModel(
		params: 7,
		urlString: "https://huggingface.co/bartowski/OLMo-2-1124-7B-Instruct-GGUF/resolve/main/OLMo-2-1124-7B-Instruct-Q8_0.gguf",
		minRam: 16,
		minGpuTflops: 5.3,
		mmluScore: 63.7,
		specializations: [.fullyOpenSource]
	)
	
	/// Static constant for the OLMo 2 13B model
	private static let olmo_2_13b: HuggingFaceModel = HuggingFaceModel(
		params: 14,
		urlString: "https://huggingface.co/bartowski/OLMo-2-1124-13B-Instruct-GGUF/resolve/main/OLMo-2-1124-13B-Instruct-IQ4_XS.gguf",
		minRam: 24,
		minGpuTflops: 13.6,
		mmluScore: 67.5,
		specializations: [.fullyOpenSource]
	)
	
}

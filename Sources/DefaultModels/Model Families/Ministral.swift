//
//  Ministral.swift
//  DefaultModels
//
//  Created by John Bean on 12/27/24.
//

import Foundation

public class Ministral: ModelSet {
	
	/// An array of `Ministral` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Ministral.ministral_8b
	]
	
	/// Static constant for the Ministral 8B model
	private static let ministral_8b: HuggingFaceModel = HuggingFaceModel(
		params: 8,
		urlString: "https://huggingface.co/bartowski/Ministral-8B-Instruct-2410-GGUF/resolve/main/Ministral-8B-Instruct-2410-Q8_0.gguf",
		minRam: 18,
		minGpuTflops: 6.8,
		mmluScore: 65.0
	)
	
}

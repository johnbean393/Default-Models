//
//  Gemma2.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class Gemma2: ModelSet {
	
	/// An array of `Gemma2` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		Gemma2.gemma_2_2b
	]
	
	/// Static constant for the Gemma 2 2B model
	private static let gemma_2_2b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF/resolve/main/gemma-2-2b-it-Q8_0.gguf",
		minRam: 8,
		minGpuTflops: 2.2,
		mmluScore: 52.2
	)
	
}

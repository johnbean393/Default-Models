//
//  EXAONE3.swift
//  DefaultModels
//
//  Created by John Bean on 12/27/24.
//

import Foundation

public class EXAONE3: ModelSet {
	
	/// An array of `Exaone 3` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		EXAONE3.exaone_3Pt5_2pt4b
	]
	
	/// Static constant for the EXAONE 3.5 2.4B model
	private static let exaone_3Pt5_2pt4b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/LGAI-EXAONE/EXAONE-3.5-2.4B-Instruct-GGUF/resolve/main/EXAONE-3.5-2.4B-Instruct-Q8_0.gguf?download=true",
		minRam: 8,
		minGpuTflops: 3.5,
		mmluScore: 60.4
	)
	
	/// Static constant for the EXAONE 3.5 7.8B model
	private static let exaone_3Pt5_7pt8b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/LGAI-EXAONE/EXAONE-3.5-7.8B-Instruct-GGUF/resolve/main/EXAONE-3.5-7.8B-Instruct-Q8_0.gguf?download=true",
		minRam: 18,
		minGpuTflops: 6.8,
		mmluScore: 69.0
	)
	
	/// Static constant for the EXAONE 3.5 32B model
	private static let exaone_3Pt5_32b: HuggingFaceModel = HuggingFaceModel(
		urlString: "https://huggingface.co/bartowski/EXAONE-3.5-32B-Instruct-GGUF/resolve/main/EXAONE-3.5-32B-Instruct-IQ4_XS.gguf?download=true",
		minRam: 36,
		minGpuTflops: 16.2,
		mmluScore: 78.3
	)
	
}

//
//  EXAONE3.swift
//  DefaultModels
//
//  Created by John Bean on 12/27/24.
//

import Foundation

public class EXAONE3: ModelSet {
	
	/// Conformance to the `Equatable` protocol
	public static func == (lhs: EXAONE3, rhs: EXAONE3) -> Bool {
		return lhs.id == rhs.id
	}
	
	/// Conformance to the `Hashable` protocol
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
	
	/// The identifier for the model set, in type `String`
	public static var id: String { self.name }
	
	/// The name of the model set, in type `String`
	public static let name: String = "EXAONE 3"
	
	/// The model family's description, in type 	`String`
	public static let description: String = "A collection of instruction-tuned bilingual (English and Korean) generative models ranging from 2.4B to 32B parameters, developed and released by LG AI Research."
	
	/// An array of `Exaone 3` models, of type ``HuggingFaceModel``
	public static let models: [HuggingFaceModel] = [
		EXAONE3.exaone_3Pt5_2pt4b,
		EXAONE3.exaone_3Pt5_7pt8b,
		EXAONE3.exaone_3Pt5_32b
	]
	
	/// Static constant for the EXAONE 3.5 2.4B model
	private static let exaone_3Pt5_2pt4b: HuggingFaceModel = HuggingFaceModel(
		name: "EXAONE-3.5-2.4B-Instruct",
		params: 2.4,
		urlString: "https://huggingface.co/LGAI-EXAONE/EXAONE-3.5-2.4B-Instruct-GGUF/resolve/main/EXAONE-3.5-2.4B-Instruct-Q8_0.gguf",
		minRam: 8,
		minGpuTflops: 3.5,
		mmluScore: 60.4,
		modelFamily: .exaone3
	)
	
	/// Static constant for the EXAONE 3.5 7.8B model
	private static let exaone_3Pt5_7pt8b: HuggingFaceModel = HuggingFaceModel(
		name: "EXAONE-3.5-7.8B-Instruct",
		params: 7.8,
		urlString: "https://huggingface.co/LGAI-EXAONE/EXAONE-3.5-7.8B-Instruct-GGUF/resolve/main/EXAONE-3.5-7.8B-Instruct-Q8_0.gguf",
		minRam: 18,
		minGpuTflops: 6.8,
		mmluScore: 69.0,
		modelFamily: .exaone3
	)
	
	/// Static constant for the EXAONE 3.5 32B model
	private static let exaone_3Pt5_32b: HuggingFaceModel = HuggingFaceModel(
		name: "EXAONE-3.5-32B-Instruct",
		params: 32,
		urlString: "https://huggingface.co/bartowski/EXAONE-3.5-32B-Instruct-GGUF/resolve/main/EXAONE-3.5-32B-Instruct-IQ4_XS.gguf",
		minRam: 36,
		minGpuTflops: 16.2,
		mmluScore: 78.3,
		modelFamily: .exaone3
	)
	
}

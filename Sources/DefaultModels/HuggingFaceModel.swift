//
//  HuggingFaceModel.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation
import SwiftUI

public struct HuggingFaceModel: Codable, Hashable, Identifiable {
	
	/// Initializer
	init(
		name: String,
		params: Float,
		urlString: String,
		minRam: Int,
		minGpuTflops: Double,
		mmluScore: Float? = nil,
        intelligenceScore: Float? = nil,
		specializations: [Specializations] = [],
		modelFamily: ModelFamily
	) {
		self.params = params
		self.name = name
		self.urlString = urlString
		self.minRam = minRam
		self.minGpuTflops = minGpuTflops
		self.mmluScore = mmluScore
        self.intelligenceScore = intelligenceScore
		self.specializations = specializations
		self.modelFamily = modelFamily
	}
	
	/// Provide conformance to `Identifiable`
	public var id: String {
		return self.name
	}

	/// The name of the model, of type `String`
	public var name: String
	
	/// Number of billions of parameters, in type `Float`
	public var params: Float
	
	/// The URL of the model's in type `String`
	private var urlString: String
	
	/// The minimum RAM needed for the model, in type 	`Int`
	public var minRam: Int
	
	/// The minimum GPU float32 throughput needed, in type `Double`
	public var minGpuTflops: Double
	
	/// Score in the MMLU benchmark, in type `Float`
	public var mmluScore: Float?
    /// Overall intelligence core on `https://artificialanalysis.ai`, in type `Float`
    public var intelligenceScore: Float?
	
	/// The model's family
	public var modelFamily: ModelFamily
	
	/// The URL of the model's of type `URL`
	public var url: URL {
		return URL(string: urlString + "?download=true")!
	}
	
	/// /// The URL of the model's mirror of type `URL`
	public var mirrorUrl: URL {
		let mirrored: String = self.urlString.replacingOccurrences(
			of: "huggingface.co",
			with: "hf-mirror.com"
		)
		return URL(string: mirrored)!
	}
	
	/// A function to indicate whether the device can run the model
	/// - Parameters:
	///   - unifiedMemorySize: The amount of RAM in the device, in type `Int`
	///   - gpuTflops: The GPU's float32 performance, in type `Double`
	/// - Returns: A `Bool` indicating whether the device can run the model
	public func canRun(
		unifiedMemorySize: Int? = nil,
		gpuTflops: Double? = nil
	) -> Bool {
		let unifiedMemorySize: Int = unifiedMemorySize ?? self.unifiedMemorySize
		let gpuTflops: Double = gpuTflops ?? (self.gpuFlops / pow(10, 12))
		let ramPass: Bool = unifiedMemorySize >= self.minRam
		let gpuPass: Bool = gpuTflops >= self.minGpuTflops
		return ramPass && gpuPass
	}
	
	/// The device's unified memory in GB, of type `Int`
	private var unifiedMemorySize: Int {
		let memory: Double = Double(ProcessInfo.processInfo.physicalMemory)
		let memoryGb: Int = Int(memory / pow(2,30))
		return memoryGb
	}
	
	/// The device's GPU Float 32 throughput, of type `Double`
	private var gpuFlops: Double {
		guard let device: GPUInfoDevice = try? .init() else {
			return 0
		}
		return device.flops
	}
	
	/// A `Bool` indicating if the model is a reasoning model
	public var isReasoningModel: Bool {
		return self.specializations.contains(.reasoning)
	}
	
	/// The model's specialties, of type ``[Specializations]``
	public var specializations: [Specializations]
	
	/// The model's specialties
	public enum Specializations: String, CaseIterable, Codable {
		
		case fineTuned = "Fine Tuned"
		case coding = "Coding"
		case math = "Math"
		case reasoning = "Reasoning"
		case imageInput = "Accepts Image Input"
		case fullyOpenSource = "Fully Open Source"
		
	}
	
	/// The model's family
	public enum ModelFamily: String, CaseIterable, Codable {
		
		case exaone3 = "EXAONE 3"
		case gemma2 = "Gemma 2"
		case gemma3 = "Gemma 3"
		case llama3 = "Llama 3"
		case ministral = "Ministral"
		case mistralSmall = "Mistral Small"
		case olmo2 = "OLMo 2"
		case qwen2 = "Qwen 2"
        case qwen3 = "Qwen 3"
		case deepseekR1 = "DeepSeek R1"
		
	}
	
}

//
//  DefaultModels.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class DefaultModels {
	
	/// An array of model families, conforming to ``ModelSet``
	public static let modelFamilies: [any ModelSet.Type] = [
		Llama3.self,
		Gemma2.self,
		Qwen2.self,
		MistralSmall.self,
		Ministral.self,
		EXAONE3.self,
		OLMo2.self,
		DeepSeekR1.self
	]
	
	/// All default models that can be run by the device, in an array of `HuggingFaceModel`
	public static var models: [HuggingFaceModel] {
		get async {
			let onlineModels: [HuggingFaceModel] = await Self.getOnlineModels()
			print("Retrieved \(onlineModels.count) models.")
			return Array(Set(Self.hardcodedModels + onlineModels))
		}
	}
	
	/// All default hardcoded models that can be run by the device, in an array of `HuggingFaceModel`
	public static var hardcodedModels: [HuggingFaceModel] {
		get {
			let hardcodedModels: [HuggingFaceModel] = self.modelFamilies.map { family in
				family.models
			}.reduce([], +)
			return hardcodedModels
		}
	}
	
	/// The reccomended model for the device, of type ``HuggingFaceModel``
	public static var recommendedModel: HuggingFaceModel {
		get async {
			// Get list of non-reasoning base models
			let models: [HuggingFaceModel] = await self.models.filter {
				$0.isReasoningModel == false
			}
			// Get baseline model
			let minModel: HuggingFaceModel = models.sorted(by: {
				$0.minRam < $1.minRam
			}).first!
			// Get top end model that can be run
			if let maxModel: HuggingFaceModel = models.filter({
				$0.canRun()
			}).sorted(by: {
				$0.mmluScore > $1.mmluScore
			}).first {
				return maxModel
			} else {
				return minModel
			}
		}
	}
	
	/// Function to get online models
	private static func getOnlineModels() async -> [HuggingFaceModel] {
		// Define the URL for fetching models
		guard let url = URL(
			string: "https://raw.githubusercontent.com/johnbean393/Default-Models/refs/heads/main/models.json"
		) else {
			return []
		}
		// Create a URLRequest with a cache policy to ignore the cache
		var request: URLRequest = URLRequest(url: url)
		request.cachePolicy = .reloadIgnoringLocalCacheData
		// Create a URLSession with a timeout of 5 seconds
		let configuration: URLSessionConfiguration = URLSessionConfiguration.default
		configuration.timeoutIntervalForRequest = 5
		let session: URLSession = URLSession(
			configuration: configuration
		)
		do {
			// Perform the network request
			let (data, _) = try await session.data(for: request)
			// Decode the JSON into HuggingFaceModel objects
			let decoder = JSONDecoder()
			let models = try decoder.decode(
				[HuggingFaceModel].self,
				from: data
			)
			return models
		} catch {
			// Handle errors during network request or decoding
			return []
		}
	}
	
	/// A function to get the recommended model for a particular spec
	/// - Parameters:
	///   - ramSize: The amount of RAM in the device, in type `Int`
	///   - gpuCoreCount: The number of GPU cores in the device, in type `Int`
	/// - Returns: The reccomended model for the device, in type ``HuggingFaceModel``
	private static func getReccomendedModelForSpecs(
		ramSize: Int,
		gpuTflops: Double
	) async -> HuggingFaceModel {
		// Get list of models
		let models: [HuggingFaceModel] = await self.models
		// Get baseline model
		let minModel: HuggingFaceModel = models.sorted(by: {
			$0.minRam < $1.minRam
		}).first!
		// Get top end model that can be run
		if let maxModel: HuggingFaceModel = models.filter({
			$0.canRun(
				unifiedMemorySize: ramSize,
				gpuTflops: gpuTflops
			)
		}).sorted(by: {
			$0.mmluScore > $1.mmluScore
		}).first {
			return maxModel
		} else {
			return minModel
		}
	}
	
	/// A function to test model reccomendations
	public static func checkModelRecommendations() async {
		// List configs for testing
		let configs: [
			(ramSize: Int, gpuTflops: Double)
		] = [
			(8, 2.2),
			(8, 2.6),
			(8, 3.5),
			(16, 2.6),
			(16, 3.5),
			(16, 5.3),
			(18, 5.7),
			(32, 6.8),
			(32, 10),
			(32, 13.5),
			(64, 13.5),
			(64, 16.3)
		]
		// Get reccomendations
		for (ramSize, gpuTflops) in configs {
			let model: HuggingFaceModel = await DefaultModels.getReccomendedModelForSpecs(
				ramSize: ramSize,
				gpuTflops: gpuTflops
			)
			print("A Mac with \(ramSize) GB of RAM and \(gpuTflops) GPU TFLOPS is recommended to use \(model.name).")
		}
	}
	
}

//
//  DefaultModels.swift
//  Sidekick
//
//  Created by Bean John on 11/3/24.
//

import Foundation

public class DefaultModels {
	
	/// An array of model families, conforming to ``ModelSet``
	private static let modelFamilies: [any ModelSet.Type] = [
		LLaMa3.self,
		Gemma2.self,
		Qwen2.self
	]
	
	/// All default models that can be run by the device, in an array of ``HuggingFaceModel``
	public static var models: [HuggingFaceModel] {
		let models: [HuggingFaceModel] = self.modelFamilies.map { family in
			family.models
		}.reduce([], +)
		return models
	}
	
	/// The reccomended model for the device, of type ``HuggingFaceModel``
	public static var recommendedModel: HuggingFaceModel {
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
	
	/// A function to get the recommended model for a particular spec
	/// - Parameters:
	///   - ramSize: The amount of RAM in the device, in type `Int`
	///   - gpuCoreCount: The number of GPU cores in the device, in type `Int`
	/// - Returns: The reccomended model for the device, in type ``HuggingFaceModel``
	private static func getReccomendedModelForSpecs(
		ramSize: Int,
		gpuTflops: Double
	) -> HuggingFaceModel {
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
	public static func checkModelRecommendations() {
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
		configs.forEach { ramSize, gpuTflops in
			let model: HuggingFaceModel = DefaultModels.getReccomendedModelForSpecs(
				ramSize: ramSize,
				gpuTflops: gpuTflops
			)
			print("A Mac with \(ramSize) GB of RAM and \(gpuTflops) GPU TFLOPS is recommended to use \(model.name).")
		}
	}
	
}

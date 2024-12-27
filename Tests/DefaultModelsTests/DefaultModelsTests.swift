import Foundation
import Testing
@testable import DefaultModels

@Test
func exportModelJson() async throws {
	// Get list of models
	let models: [HuggingFaceModel] = DefaultModels.hardcodedModels
	// Initialize the encoder
	let encoder: JSONEncoder = JSONEncoder()
	// Define JSON file URL
	let jsonUrl: URL = URL(fileURLWithPath: "/Users/bj/Library/Application Support/Magic Sorter/Sorted Land/Computer DN/Xcode Apps/Misc/Sidekick/Models/DefaultModels/models.json")
	// Save models to JSON file
	do {
		// Convert models to data
		let rawData: Data = try encoder.encode(models)
		// Save to JSON file
		try rawData.write(
			to: jsonUrl,
			options: .atomic
		)
	} catch {
		print("Error encoding data: \(error)")
	}

}

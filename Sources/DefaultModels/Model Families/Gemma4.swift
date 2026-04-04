//
//  Gemma4.swift
//  DefaultModels
//
//  Created by Codex on 4/4/26.
//

import Foundation

public class Gemma4: ModelSet {
    
    /// Conformance to the `Equatable` protocol
    public static func == (lhs: Gemma4, rhs: Gemma4) -> Bool {
        return lhs.id == rhs.id
    }
    
    /// Conformance to the `Hashable` protocol
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    /// The identifier for the model set, in type `String`
    public static var id: String { self.name }
    
    /// The name of the model set, in type `String`
    public static let name: String = "Gemma 4"
    
    /// The model family's description, in type `String`
    public static let description: String = "Gemma 4 is a family of fourth generation open models from Google, spanning compact dense models and larger mixture-of-experts variants."
    
    /// An array of `Gemma 4` models, of type ``HuggingFaceModel``
    public static let models: [HuggingFaceModel] = [
        Gemma4.gemma_4_e2b,
        Gemma4.gemma_4_e4b,
        Gemma4.gemma_4_26b_a4b,
    ]
    
    /// Static constant for the Gemma 4 E2B model
    private static let gemma_4_e2b: HuggingFaceModel = HuggingFaceModel(
        name: "Gemma-4-E2B-it",
        params: 2,
        urlString: "https://huggingface.co/unsloth/gemma-4-E2B-it-GGUF/resolve/main/gemma-4-E2B-it-UD-Q4_K_XL.gguf",
        minRam: 8,
        minGpuTflops: 1,
        intelligenceScore: 15,
        modelFamily: .gemma4
    )
    
    /// Static constant for the Gemma 4 E4B model
    private static let gemma_4_e4b: HuggingFaceModel = HuggingFaceModel(
        name: "Gemma-4-E4B-it",
        params: 4,
        urlString: "https://huggingface.co/unsloth/gemma-4-E4B-it-GGUF/resolve/main/gemma-4-E4B-it-UD-Q4_K_XL.gguf",
        minRam: 8,
        minGpuTflops: 2.2,
        intelligenceScore: 19,
        modelFamily: .gemma4
    )
    
    /// Static constant for the Gemma 4 26B A4B model
    private static let gemma_4_26b_a4b: HuggingFaceModel = HuggingFaceModel(
        name: "Gemma-4-26B-A4B-it",
        params: 26,
        urlString: "https://huggingface.co/unsloth/gemma-4-26B-A4B-it-GGUF/resolve/main/gemma-4-26B-A4B-it-UD-Q4_K_M.gguf",
        minRam: 32,
        minGpuTflops: 4.1,
        intelligenceScore: 31,
        modelFamily: .gemma4
    )
    
}

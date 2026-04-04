//
//  Qwen3Pt5.swift
//  DefaultModels
//
//  Created by Codex on 3/12/26.
//

import Foundation

public class Qwen3Pt5: ModelSet {
    
    /// Conformance to the `Equatable` protocol
    public static func == (lhs: Qwen3Pt5, rhs: Qwen3Pt5) -> Bool {
        return lhs.id == rhs.id
    }
    
    /// Conformance to the `Hashable` protocol
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    /// The identifier for the model set, in type `String`
    public static var id: String { self.name }
    
    /// The name of the model set, in type `String`
    public static let name: String = "Qwen 3.5"
    
    /// The model family's description, in type `String`
    public static let description: String = "A family of state of the art models developed by Alibaba Cloud, spanning lightweight dense models and larger MoE variants."
    
    /// An array of `Qwen 3.5` models, of type ``HuggingFaceModel``
    public static let models: [HuggingFaceModel] = [
        Qwen3Pt5.qwen3pt5_0pt8b,
        Qwen3Pt5.qwen3pt5_2b,
        Qwen3Pt5.qwen3pt5_4b,
        Qwen3Pt5.qwen3pt5_9b,
        Qwen3Pt5.qwen3pt5_27b,
        Qwen3Pt5.qwen3pt5_35b_a3b,
    ]
    
    /// Static constant for the Qwen 3.5 0.8B model
    private static let qwen3pt5_0pt8b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.5-0.8B",
        params: 0.8,
        urlString: "https://huggingface.co/unsloth/Qwen3.5-0.8B-GGUF/resolve/main/Qwen3.5-0.8B-Q4_K_M.gguf",
        minRam: 8,
        minGpuTflops: 1,
        intelligenceScore: 11,
        modelFamily: .qwen3Pt5
    )
    
    /// Static constant for the Qwen 3.5 2B model
    private static let qwen3pt5_2b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.5-2B",
        params: 2,
        urlString: "https://huggingface.co/unsloth/Qwen3.5-2B-GGUF/resolve/main/Qwen3.5-2B-Q4_K_M.gguf",
        minRam: 8,
        minGpuTflops: 1,
        intelligenceScore: 16,
        modelFamily: .qwen3Pt5
    )
    
    /// Static constant for the Qwen 3.5 4B model
    private static let qwen3pt5_4b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.5-4B",
        params: 4,
        urlString: "https://huggingface.co/unsloth/Qwen3.5-4B-GGUF/resolve/main/Qwen3.5-4B-Q4_K_M.gguf",
        minRam: 8,
        minGpuTflops: 2.2,
        intelligenceScore: 23,
        modelFamily: .qwen3Pt5
    )
    
    /// Static constant for the Qwen 3.5 9B model
    private static let qwen3pt5_9b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.5-9B",
        params: 9,
        urlString: "https://huggingface.co/unsloth/Qwen3.5-9B-GGUF/resolve/main/Qwen3.5-9B-Q4_K_M.gguf",
        minRam: 16,
        minGpuTflops: 6.8,
        intelligenceScore: 32,
        modelFamily: .qwen3Pt5
    )
    
    /// Static constant for the Qwen 3.5 27B model
    private static let qwen3pt5_27b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.5-27B",
        params: 27,
        urlString: "https://huggingface.co/unsloth/Qwen3.5-27B-GGUF/resolve/main/Qwen3.5-27B-Q4_K_M.gguf",
        minRam: 32,
        minGpuTflops: 16.2,
        intelligenceScore: 42,
        modelFamily: .qwen3Pt5
    )
    
    /// Static constant for the Qwen 3.5 35B A3B model
    private static let qwen3pt5_35b_a3b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.5-35B A3B",
        params: 35,
        urlString: "https://huggingface.co/unsloth/Qwen3.5-35B-A3B-GGUF/resolve/main/Qwen3.5-35B-A3B-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 4.1,
        intelligenceScore: 37,
        modelFamily: .qwen3Pt5
    )
    
}

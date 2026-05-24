//
//  Qwen3Ptt.swift
//  DefaultModels
//
//  Created by Codex on 3/12/26.
//

import Foundation

public class Qwen3Pt6: ModelSet {
    
    /// Conformance to the `Equatable` protocol
    public static func == (lhs: Qwen3Pt6, rhs: Qwen3Pt6) -> Bool {
        return lhs.id == rhs.id
    }
    
    /// Conformance to the `Hashable` protocol
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    /// The identifier for the model set, in type `String`
    public static var id: String { self.name }
    
    /// The name of the model set, in type `String`
    public static let name: String = "Qwen 3.6"
    
    /// The model family's description, in type `String`
    public static let description: String = "A family of state of the art models developed by Alibaba Cloud, spanning lightweight dense models and larger MoE variants."
    
    /// An array of `Qwen 3.6` models, of type ``HuggingFaceModel``
    public static let models: [HuggingFaceModel] = [
        Qwen3Pt6.qwen3pt6_27b,
        Qwen3Pt6.qwen3pt6_35b_a3b,
    ]
    
    /// Static constant for the Qwen 3.6 27B model
    private static let qwen3pt6_27b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.6-27B",
        params: 27,
        urlString: "https://huggingface.co/unsloth/Qwen3.6-27B-GGUF/resolve/main/Qwen3.6-27B-Q4_K_M.gguf",
        minRam: 32,
        minGpuTflops: 16.2,
        intelligenceScore: 45,
        modelFamily: .qwen3Pt6
    )
    
    /// Static constant for the Qwen 3.6 35B A3B model
    private static let qwen3pt6_35b_a3b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3.6-35B-A3B",
        params: 35,
        urlString: "https://huggingface.co/unsloth/Qwen3.6-35B-A3B-GGUF/resolve/main/Qwen3.6-35B-A3B-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 4.1,
        intelligenceScore: 41,
        modelFamily: .qwen3Pt6
    )
    
}


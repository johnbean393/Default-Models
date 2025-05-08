//
//  Qwen3.swift
//  DefaultModels
//
//  Created by John Bean on 4/30/25.
//

import Foundation

public class Qwen3: ModelSet {
    
    /// Conformance to the `Equatable` protocol
    public static func == (lhs: Qwen3, rhs: Qwen3) -> Bool {
        return lhs.id == rhs.id
    }
    
    /// Conformance to the `Hashable` protocol
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    /// The identifier for the model set, in type `String`
    public static var id: String { self.name }
    
    /// The name of the model set, in type `String`
    public static let name: String = "Qwen 3"
    
    /// The model family's description, in type     `String`
    public static let description: String = "A family of state of the art models developed by Alibaba Cloud, with performance besting all other open models in its size class."
    
    /// An array of `Qwen 3` models, of type ``HuggingFaceModel``
    public static let models: [HuggingFaceModel] = [
        Qwen3.qwen3_0pt6b,
        Qwen3.qwen3_1pt7b,
        Qwen3.qwen3_4b,
        Qwen3.qwen3_8b,
        Qwen3.qwen3_14b,
        Qwen3.qwen3_30b_a3b,
        Qwen3.qwen3_32b
    ]
    
    /// Static constant for the Qwen 3 0.6B model
    private static let qwen3_0pt6b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-0.6B",
        params: 0.6,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-0.6B-GGUF/resolve/main/Qwen_Qwen3-0.6B-Q8_0.gguf",
        minRam: 8,
        minGpuTflops: 2.2,
        intelligenceScore: 23,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 1.7B model
    private static let qwen3_1pt7b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-1.7B",
        params: 1.7,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-1.7B-GGUF/resolve/main/Qwen_Qwen3-1.7B-Q8_0.gguf",
        minRam: 8,
        minGpuTflops: 2.2,
        intelligenceScore: 38,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 4B model
    private static let qwen3_4b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-4B",
        params: 4,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-4B-GGUF/resolve/main/Qwen_Qwen3-4B-Q6_K.gguf",
        minRam: 8,
        minGpuTflops: 2.6,
        intelligenceScore: 45,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 8B model
    private static let qwen3_8b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-8B",
        params: 8,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-8B-GGUF/resolve/main/Qwen_Qwen3-8B-Q6_K.gguf",
        minRam: 16,
        minGpuTflops: 5.3,
        intelligenceScore: 47,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 14B model
    private static let qwen3_14b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-14B",
        params: 14,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-14B-GGUF/resolve/main/Qwen_Qwen3-14B-Q4_K_M.gguf",
        minRam: 24,
        minGpuTflops: 7.4,
        intelligenceScore: 56,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 30B-A3B model
    private static let qwen3_30b_a3b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-30B-A3B",
        params: 30,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-30B-A3B-GGUF/resolve/main/Qwen_Qwen3-30B-A3B-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 4.1,
        intelligenceScore: 56,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 32B model
    private static let qwen3_32b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-32B",
        params: 32,
        urlString: "https://huggingface.co/bartowski/Qwen_Qwen3-32B-GGUF/resolve/main/Qwen_Qwen3-32B-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 16.2,
        intelligenceScore: 59,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
}

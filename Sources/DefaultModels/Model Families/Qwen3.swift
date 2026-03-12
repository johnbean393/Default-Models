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
        Qwen3.qwen3_4b,
        Qwen3.qwen3_4b_instruct_2507,
        Qwen3.qwen3_4b_thinking_2507,
        Qwen3.qwen3_8b,
        Qwen3.qwen3_30b_a3b_instruct_2507,
        Qwen3.qwen3_30b_a3b_thinking_2507,
        Qwen3.qwen3_32b,
    ]

    /// Static constant for the Qwen 3 4B model
    private static let qwen3_4b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-4B",
        params: 4,
        urlString: "https://huggingface.co/Qwen/Qwen3-4B-GGUF/resolve/main/Qwen3-4B-Q6_K.gguf",
        minRam: 8,
        minGpuTflops: 2.6,
        intelligenceScore: 14,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 4B Instruct 2507 model
    private static let qwen3_4b_instruct_2507: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-4B-Instruct-2507",
        params: 4,
        urlString: "https://huggingface.co/unsloth/Qwen3-4B-Instruct-2507-GGUF/resolve/main/Qwen3-4B-Instruct-2507-Q6_K.gguf",
        minRam: 8,
        minGpuTflops: 2.6,
        intelligenceScore: 13,
        specializations: [],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 4B Thinking 2507 model
    private static let qwen3_4b_thinking_2507: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-4B-Thinking-2507",
        params: 4,
        urlString: "https://huggingface.co/unsloth/Qwen3-4B-Thinking-2507-GGUF/resolve/main/Qwen3-4B-Thinking-2507-Q6_K.gguf",
        minRam: 8,
        minGpuTflops: 2.6,
        intelligenceScore: 18,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 8B model
    private static let qwen3_8b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-8B",
        params: 8,
        urlString: "https://huggingface.co/Qwen/Qwen3-8B-GGUF/resolve/main/Qwen3-8B-Q6_K.gguf",
        minRam: 16,
        minGpuTflops: 5.3,
        intelligenceScore: 13,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 30B-A3B Instruct 2507 model
    private static let qwen3_30b_a3b_instruct_2507: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-30B-A3B-Instruct-2507",
        params: 30,
        urlString: "https://huggingface.co/unsloth/Qwen3-30B-A3B-Instruct-2507-GGUF/resolve/main/Qwen3-30B-A3B-Instruct-2507-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 4.1,
        intelligenceScore: 15,
        specializations: [],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 30B-A3B Thinking 2507 model
    private static let qwen3_30b_a3b_thinking_2507: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-30B-A3B-Thinking-2507",
        params: 30,
        urlString: "https://huggingface.co/unsloth/Qwen3-30B-A3B-Thinking-2507-GGUF/resolve/main/Qwen3-30B-A3B-Thinking-2507-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 4.1,
        intelligenceScore: 22,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
    /// Static constant for the Qwen 3 32B model
    private static let qwen3_32b: HuggingFaceModel = HuggingFaceModel(
        name: "Qwen3-32B",
        params: 32,
        urlString: "https://huggingface.co/Qwen/Qwen3-32B-GGUF/resolve/main/Qwen3-32B-Q4_K_M.gguf",
        minRam: 36,
        minGpuTflops: 16.2,
        intelligenceScore: 17,
        specializations: [.reasoning],
        modelFamily: .qwen3
    )
    
}

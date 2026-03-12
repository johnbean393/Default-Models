//
//  File.swift
//  DefaultModels
//
//  Created by John Bean on 11/4/25.
//

import Foundation

public class GPTOSS: ModelSet {
    
    /// Conformance to the `Equatable` protocol
    public static func == (lhs: GPTOSS, rhs: GPTOSS) -> Bool {
        return lhs.id == rhs.id
    }
    
    /// Conformance to the `Hashable` protocol
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    /// The identifier for the model set, in type `String`
    public static var id: String { self.name }
    
    /// The name of the model set, in type `String`
    public static let name: String = "GPT-OSS"
    
    /// The model family's description, in type `String`
    public static let description: String = "A family of open-weight large language models (LLMs) developed by OpenAI, featuring Mixture-of-Experts architecture for efficient inference and powerful reasoning capabilities."
    
    /// An array of `GPT-OSS` models, of type ``HuggingFaceModel``
    public static let models: [HuggingFaceModel] = [
        GPTOSS.gpt_oss_20b
    ]
    
    /// Static constant for the GPT-OSS 20B model
    private static let gpt_oss_20b: HuggingFaceModel = HuggingFaceModel(
        name: "gpt-oss-20b",
        params: 20,
        urlString: "https://huggingface.co/bartowski/openai_gpt-oss-20b-GGUF/resolve/main/openai_gpt-oss-20b-MXFP4.gguf",
        minRam: 16,
        minGpuTflops: 4.1,
        intelligenceScore: 24,
        specializations: [.reasoning],
        modelFamily: .gptoss
    )
    
}

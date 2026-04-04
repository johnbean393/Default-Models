//
//  GPU.swift
//  Sidekick
//
//  Created by Bean John on 11/9/24.
//

import Foundation

public struct GPU: Identifiable {
	
	/// Computed property for `Identifiable` conformance
	public var id: String { self.name }
	
	/// The name of the SoC, in type `String`
	public var name: String
	/// The amount of float32 performance, in type double
	public var tflops: Double
	
	public static let all: [GPU] = [
        .init(name: "Apple A18 Pro", tflops: 1.9),
		.init(name: "Apple M1", tflops: 2.6),
		.init(name: "Apple M1 Pro", tflops: 5.2),
		.init(name: "Apple M1 Max", tflops: 10.4),
		.init(name: "Apple M1 Ultra", tflops: 21.0),
		.init(name: "Apple M2", tflops: 3.6),
		.init(name: "Apple M2 Pro", tflops: 6.8),
		.init(name: "Apple M2 Max", tflops: 13.49),
		.init(name: "Apple M2 Ultra", tflops: 27.2),
		.init(name: "Apple M3", tflops: 4.1),
		.init(name: "Apple M3 Pro", tflops: 7.4),
		.init(name: "Apple M3 Max", tflops: 14.2),
        .init(name: "Apple M3 Ultra", tflops: 28.4),
        .init(name: "Apple M4", tflops: 4.6),
        .init(name: "Apple M4 Pro", tflops: 9.2),
        .init(name: "Apple M4 Max", tflops: 18.4),
        .init(name: "Apple M5", tflops: 5.7),
        .init(name: "Apple M5 Pro", tflops: 11.4),
        .init(name: "Apple M5 Max", tflops: 22.8),
	].sorted(by: {
		$0.tflops < $1.tflops
	})
	
}

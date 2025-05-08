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
		.init(name: "Apple M1", tflops: 2.617),
		.init(name: "Apple M1 Pro", tflops: 5.308),
		.init(name: "Apple M1 Max", tflops: 10.617),
		.init(name: "Apple M1 Ultra", tflops: 21.23),
		.init(name: "Apple M2", tflops: 3.579),
		.init(name: "Apple M2 Pro", tflops: 6.8),
		.init(name: "Apple M2 Max", tflops: 13.6),
		.init(name: "Apple M2 Ultra", tflops: 27.2),
		.init(name: "Apple M3", tflops: 4.1),
		.init(name: "Apple M3 Pro", tflops: 7.4),
		.init(name: "Apple M3 Max", tflops: 16.2),
        .init(name: "Apple M3 Ultra", tflops: 32.4),
        .init(name: "Apple M4", tflops: 4.6),
        .init(name: "Apple M4 Pro", tflops: 9.2),
        .init(name: "Apple M4 Max", tflops: 18.4),
	].sorted(by: {
		$0.tflops < $1.tflops
	})
	
}

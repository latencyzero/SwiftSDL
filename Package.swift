// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "SwiftSDL",
	products: [
		.library(
			name: "SwiftSDL",
			targets: ["SwiftSDL"]),
	],
	dependencies: [
	],
	targets: [
		.target(
			name: "SwiftSDL",
			dependencies: ["CSDL2"]),
		.testTarget(
			name: "SwiftSDLTests",
			dependencies: ["SwiftSDL"]),
		.systemLibrary(
			name: "CSDL2",
			path: "Sources/CSDL2",
			pkgConfig: "sdl2",
			providers: [
				.brew(["sdl2"]),
				.apt(["libsdl2"])
			]),
	]
)

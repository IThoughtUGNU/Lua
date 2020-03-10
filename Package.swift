// swift-tools-version:5.1
//
//  Package.swift
//  Lua
//

import PackageDescription

let package = Package(
	name: "Lua",
	products: [
		.library(name: "Lua",
				 type: .dynamic,
				 targets: ["Lua"])
	],
	dependencies: [
		.package(url: "https://github.com/DavidSkrundz/CLua.git", .branch("master")),
	],
	targets: [
		.target(
			name:"Lua",
			dependencies: ["CLua"],
			path:"Sources"
		)
	]
)

/*
let staticLibrary = Product(
	name: "Lua",
	type: .Library(.Static),
	modules: ["Lua"]
)
let dynamicLibrary = Product(
	name: "Lua",
	type: .Library(.Dynamic),
	modules: ["Lua"]
)

products.append(staticLibrary)
products.append(dynamicLibrary)
*/
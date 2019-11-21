//
//  Cores.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//
import Foundation
struct Cores : Codable {
	let core_serial : String?
	let flight : Int?
	let block : Int?
	let gridfins : Bool?
	let legs : Bool?
	let reused : Bool?
	let land_success : Bool?
	let landing_intent : Bool?
	let landing_type : String?
	let landing_vehicle : String?
}

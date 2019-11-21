//
//  Payloads.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
struct Payloads : Codable {
	let payload_id : String?
	let norad_id : [Int]?
	let reused : Bool?
	let customers : [String]?
	let nationality : String?
	let manufacturer : String?
	let payload_type : String?
	let payload_mass_kg : Double?
	let payload_mass_lbs : Double?
	let orbit : String?
	let orbit_params : Orbit_params?
	let uid : String?
}

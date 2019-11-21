//
//  Orbit_params.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
struct Orbit_params : Codable {
	let reference_system : String?
	let regime : String?
	let longitude : Double?
	let semi_major_axis_km : Double?
	let eccentricity : Double?
	let periapsis_km : Double?
	let apoapsis_km : Double?
	let inclination_deg : Double?
	let period_min : Double?
	let lifespan_years : Double?
	let epoch : String?
	let mean_motion : Double?
	let raan : Double?
	let arg_of_pericenter : Double?
	let mean_anomaly : Double?
}

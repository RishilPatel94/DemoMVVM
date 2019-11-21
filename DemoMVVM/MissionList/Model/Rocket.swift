//
//  Rocket.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
struct Rocket : Codable {
	let rocket_id : String?
	let rocket_name : String?
	let rocket_type : String?
	let first_stage : First_stage?
	let second_stage : Second_stage?
	let fairings : Fairings?
}

//
//  Fairings.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
struct Fairings : Codable {
	let reused : Bool?
	let recovery_attempt : Bool?
	let recovered : Bool?
	let ship : String?
}

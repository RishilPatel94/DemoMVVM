//
//  LaunchDetails.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
struct LaunchDetails : Codable {
	let flight_number : Int?
	let mission_name : String?
	let mission_id : [String]?
	let upcoming : Bool?
	let launch_year : String?
	let launch_date_unix : Int?
	let launch_date_utc : String?
	let launch_date_local : String?
	let is_tentative : Bool?
	let tentative_max_precision : String?
	let tbd : Bool?
	let launch_window : Int?
	let rocket : Rocket?
	let ships : [String]?
	let telemetry : Telemetry?
	let launch_site : Launch_site?
	let launch_success : Bool?
	let launch_failure_details : Launch_failure_details?
	let links : Links?
	let details : String?
	let static_fire_date_utc : String?
	let static_fire_date_unix : Int?
	let timeline : Timeline?
	let crew : String?

    var jsonDict : [String:AnyObject]? {
        let jsonEncoder = JSONEncoder()
        jsonEncoder.outputFormatting = .prettyPrinted
        do {
            let jsonData = try jsonEncoder.encode(self)
            guard let theJSONData = try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) else {
                return nil
            }
            return theJSONData as? [String:AnyObject]
        } catch {
            return nil
        }
    }
}



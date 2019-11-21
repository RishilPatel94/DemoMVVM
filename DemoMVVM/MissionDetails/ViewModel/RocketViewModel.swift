//
//  RocketViewModel.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//


import Foundation

class RocketViewModel: NSObject, SectionRepresentable {
    var rocket : Rocket!
    init(rocket:Rocket) {
        self.rocket = rocket
        self.first_stage = FirstStageViewModel(firstStage: rocket.first_stage)
    }

    @objc var first_stage : FirstStageViewModel

   @objc  var rocketId : String {
        if let rocketId = self.rocket.rocket_id {
            return "rocket Id : " + rocketId
        }
        return "rocket Id"
    }

 @objc    var rocketName : String {
        if let rocketName = self.rocket.rocket_name {
            return "rocket Name : " + rocketName
        }
        return "rocket Name"
    }

  @objc   var rocketType : String {
        if let rocketTyple = self.rocket.rocket_type{
            return "rocket type : " + rocketTyple
        }
        return "rocket type"
    }

    var Section: [String] = ["rocketId","rocketType","rocketName","first_stage"]
    var sectionCount : Int {
        return Section.count
    }
}

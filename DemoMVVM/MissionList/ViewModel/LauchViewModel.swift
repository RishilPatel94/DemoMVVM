//
//  LauchViewModel.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation


protocol LauchViewModelProtocol {
    func formatDate(responseDate: String?) -> String
}

class LauchViewModel : NSObject, SectionRepresentable {
    let launchModel: LaunchDetails?
    let serverDateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    let appDateFormat = "yyyy-MM-dd"
  @objc  var rocketDetails : RocketViewModel?
    init(model: LaunchDetails?) {
        self.launchModel = model
        if let rocket = model?.rocket {
            self.rocketDetails = RocketViewModel(rocket:rocket)
        }
    }

    var Section: [String] = ["rocketDetails","missionName","rocketName","launchDate","launchSite","missionImage"]

    var sectionCount : Int {
        return Section.count
    }
    
}

extension LauchViewModel: LauchViewModelProtocol {
    
    /// String formatter for date
    /// - Parameter responseDate: serverside date
    func formatDate(responseDate: String?) -> String {
        let date = responseDate?.dateFrom(format: serverDateFormat)
        let stringDate = date?.stringFromDate(format: appDateFormat) ?? ""
        return stringDate
    }
    
    @objc var missionName: String  {
        if let missionName = launchModel?.mission_name {
            return  "Mission Name: " + missionName
        }
        return "Mission Name:"
    }

     @objc var rocketName: String {
        if let rocketName = launchModel?.rocket?.rocket_name {
            return "Rocket Name: " +  rocketName
        }
        return "Rocket Name:"
    }

   @objc var launchDate:String {

        if let launchdate = launchModel?.launch_date_utc {
            return "Launch Date: " + formatDate(responseDate: launchdate)
        }
        return "Launch Date:"
    }

   @objc var launchSite:String {
        if let siteName = launchModel?.launch_site?.site_name {
            return "Site Name: " + siteName
        }
        return "Site Name"
    }

  @objc  var missionImage:URL? {
        if let missionImage = launchModel?.links?.mission_patch , let missionURl = URL(string: missionImage) {
            return missionURl
        }
        return nil
    }
}

//
//  CoreViewModel.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//


import Foundation

class CoreViewModel: NSObject, SectionRepresentable{
    private let core : Cores
    init?(core:Cores?) {
        if core == nil {
            return nil
        }
        self.core = core!
    }
    var Section: [String] = ["core_serial"]

    var sectionCount: Int {
        return Section.count
    }

   @objc var core_serial : String {
        if let coreSerial = core.core_serial {
            return "coreSerial : \(coreSerial)"
        }
        return "coreSerial"
    }
}


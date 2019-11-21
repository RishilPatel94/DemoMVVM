//
//  FirstStageViewModel.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
class FirstStageViewModel: NSObject , SectionRepresentable {
    var Section: [String] = ["cores"]

    var sectionCount : Int {
        return Section.count
    }
     private let  firstStage : First_stage?

    @objc var cores : CoreViewModel?

    init(firstStage:First_stage?) {
        self.firstStage = firstStage
        cores = CoreViewModel(core: firstStage?.cores?[0])
    }
}

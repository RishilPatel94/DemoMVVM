//
//  SectionRepresentable.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
protocol subscriptable : NSObject {}

extension subscriptable {
    subscript(key:String) -> Any? {
        self.value(forKey: key)
    }
}


protocol SectionRepresentable  : subscriptable {
    var Section :[String] {get set}
    var sectionCount: Int {get}
}

extension SectionRepresentable {
    func getKeyName(by index:Int) -> String {
        return Section[index]
    }
}

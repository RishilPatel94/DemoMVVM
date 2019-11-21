//
//  StringExtensions_Tests.swift
//  DemoMVVMTests
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import XCTest
@testable import DemoMVVM

class StringExtension_Tests: XCTestCase {


    func test_formattedDateFromString_nil() {
        let dateStr = "2019-11-20T04:00:00.000Z"
        let date = dateStr.dateFrom(format: "yyyy-MM-dd'T'HH:mm:ss.SSSZ")
        XCTAssertNotNil(date)
    }

}

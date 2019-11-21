//
//  LaunchViewModel_Tests.swift
//  DemoMVVMTests
//
//  Created by Rish on 11/20/19
//  Copyright © 2019 Rishil. All rights reserved.
//

import XCTest
@testable import DemoMVVM

class LaunchViewModel_Tests: XCTestCase {
    var viewModel = LauchViewModel(model: nil)
    
    func test_formatDate_nil() {
        XCTAssertEqual("", viewModel.formatDate(responseDate: nil))
    }

    func test_formatDate_valid() {
        XCTAssertTrue("2019-11-20" == viewModel.formatDate(responseDate: "2019-11-20T04:00:00.000Z"))
    }
    
    func test_formatDate_inValid() {
        XCTAssertFalse("2019-11-20T04:00:00.000Z" == viewModel.formatDate(responseDate: "2019-11-20T04:00:00.000Z"))
        XCTAssertFalse("" == viewModel.formatDate(responseDate: "2019-11-20T04:00:00.000Z"))
    }
}

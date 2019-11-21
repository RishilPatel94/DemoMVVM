//
//  Date+Extension_Tests.swift
//  DemoMVVMTests
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import XCTest
@testable import DemoMVVM

class DateExtension_Tests: XCTestCase {
    let dateString = "2019-11-20T04:00:00.000Z"
    // mocking test utility helper
    lazy var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return formatter
    }()
    
    var mockDate: Date {
        return createMockDate()
    }
    
    func createMockDate() -> Date {
        return formatter.date(from: dateString) ?? Date()
    }
    
    func test_stringFromDateWithFormat_valid() {
        let mockDateString = mockDate.stringFromDate(format: "yyyy-MM-dd")
        let expectedDate = "2019-11-20"
        XCTAssertEqual(mockDateString, expectedDate)
    }
    
    func test_stringFromDateWithFormat_inValid() {
        let mockDateString = mockDate.stringFromDate(format: "yyyy-MM-dd")
        XCTAssertFalse(mockDateString == dateString)
    }
}

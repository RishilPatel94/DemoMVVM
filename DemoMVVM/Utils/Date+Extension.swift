//
//  Date+Extension.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
extension Date {
    
    /// Date formatter function for string from date[Testable function ].
    ///
    /// - Parameter format: format string for return string into that format.
    /// - Returns: formatted string.
    func stringFromDate(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        let result = dateFormatter.string(from: self)
        return result
    }
}

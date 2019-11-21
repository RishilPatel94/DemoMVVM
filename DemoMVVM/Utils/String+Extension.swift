//
//  String+Extension.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation
extension String {
    /// Date formatter function for date from string[Testable function ].
    ///
    /// - Parameter format: format string for return date into that format.
    /// - Returns: formatted date.
    func dateFrom(format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        guard let date = dateFormatter.date(from: self)
            else {
                return nil
        }
        return date
    }
}

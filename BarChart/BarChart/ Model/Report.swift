//
//  Report.swift
//  BarChart
//
//  Created by Salmdo on 4/20/23.
//

import Foundation

struct Report: Hashable {
    let year: String
    let revenue: Double
    
    var revenueString: String {
        String(format: "%.2f", revenue)
    }
}

extension Report {
    static func all() -> [Report] {
        return [
            Report(year: "2021", revenue: 3400),
            Report(year: "2022", revenue: 5400),
            Report(year: "2023", revenue: 8400),
            Report(year: "2024", revenue: 1400)
        ]
    }
}

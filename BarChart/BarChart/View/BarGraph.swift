//
//  BarGraph.swift
//  BarChart
//
//  Created by Salmdo on 4/20/23.
//

import SwiftUI

struct BarGraph: View {
    var reports: [Report]
    
    init(){
        reports = Report.all()
    }
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            ForEach(reports, id: \.year) { report in
                BarColumn(report: report)
            }
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph()
    }
}

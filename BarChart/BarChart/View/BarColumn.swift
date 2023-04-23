//
//  BarColumn.swift
//  BarChart
//
//  Created by Salmdo on 4/20/23.
//

import SwiftUI

struct BarColumn: View {
    let report: Report

    @State var showGraph: Bool = false
    

    
    var body: some View {
        
        let value = report.revenue/500
        let yValue = Swift.min(value*20, 500)
        
        VStack{
            Text("\(report.revenueString)")
            Rectangle()
                .fill(Color.brown)
                .frame(width: 100, height: self.showGraph ? yValue: 0.0)
                .onAppear{
                    withAnimation {
                        self.showGraph = true
                    }
                }
            Text(report.year)
            
        }
    }
}

struct BarColumn_Previews: PreviewProvider {
    static var previews: some View {
        BarColumn(report: Report(year: "2022", revenue: 2300))
    }
}

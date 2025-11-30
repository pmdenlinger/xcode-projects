//
//  ResultsView.swift
//  Tax Calculator 2
//
//  Created by Paul Denlinger on 11/30/25.
//

import SwiftUI
import SwiftUICharts

struct ResultsView: View {
    
    var taxBreakdown: [Double] = [5, 10, 15]
    
    var body: some View
    {
       PieChart()
            .data(taxBreakdown)
            .chartStyle(ChartStyle(backgroundColor: .white, foregroundColor: [ColorGradient(.blue, .purple)]))
    }
}

#Preview {
    ResultsView()
}

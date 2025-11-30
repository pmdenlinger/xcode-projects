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
    VStack{
        
        Text("Summary")
            .font(.system(size: 36))
            .fontWeight(.bold)
            
    
    PieChart()
        .data(taxBreakdown)
        .chartStyle(ChartStyle(backgroundColor: .white, foregroundColor: ColorGradient(.blue, .purple)))
        
        Text("Before Tax")
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text("$100,000.00")
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text("After Tax")
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text("$65,000.00")
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text("After Tax")
        ProgressView("", value: 65, total: 100)
        
        Text("Tax")
        ProgressView("", value: 65, total: 100)
        
        Text("Social Security")
        ProgressView("", value: 20, total: 100)
        
    }.padding()
    
    
}
}

#Preview {
    ResultsView()
}

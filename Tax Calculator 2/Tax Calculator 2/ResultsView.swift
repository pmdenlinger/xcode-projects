//
//  ResultsView.swift
//  Tax Calculator 2
//
//  Created by Paul Denlinger on 11/30/25.
//

import SwiftUI
import SwiftUICharts
struct ResultsView: View
{
    
    @Binding var salary: String
    var taxBreakdown: [Double] = [5, 10, 15]
    
    var body: some View
    let salaryNum = Double( salary )!
    var incomeTax: Double = 0
    var socialSecurity: Double = 0
    
    if ( salaryNum > 12570 )
        {
            if ( salaryNum < 37700 )
            {
                if ( salaryNum > 150000 )
                {
                incomeTax += (37700 - 12571) * 0.2
                incomeTax += (150000 - 37701) * 0.4
                incomeTax += (salaryNum - 150000) * 0.45
                }
                else
                {
                    incomeTax += (37700 - 12571) * 0.2
                    incomeTax += (salaryNum - 37701) * 0.4
                }
            }
        else
        {
        incomeTax += (salaryNum - 12571) * 0.2
        socialSecurity += salaryNum * 0.12
        let afterTaxSalary = salaryNum - incomeTax - socialSecurity

        let salaryString = String( format: "%.2f", salaryNum )
        let afterTaxSalaryString = String( format: "%.2f", afterTaxSalary )
        let incomeTaxString = String( format: "%.2f", incomeTax )
        let socialSecurityString = String( format: "%.2f", socialSecurity )
        
        let taxBreadkdown: [Double] = [ afterTaxSalary, incomeTax, socialSecurity  ]
        }
        
            
        
return VStack
        {
            PieChart()
                .data(taxBreakdown)
                .chartStyle(ChartStyle(backgroundColor: .white, foregroundColor:
                                        ColorGradient(.blue, .purple)))
        
        Text("Before Tax")
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text( salaryString )
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text("After Tax")
            .font(.system(size: 32))
            .padding(.vertical)
        
        Text( afterTaxSalaryString )
            .font(.system(size: 32))
            .padding(.vertical)
        
        Group
            {
            
            Text("After Tax Salary")
            ProgressView( afterTaxSalaryString, value: afterTaxSalary / salaryNum * 100, total: 100)
            
            Text("Tax")
            ProgressView( incomeTaxString, value: incomeTax / salaryNum * 100, total: 100)
            Text("Social Security")
            ProgressView( so, value: 13, total: 100)
            }
        }.padding()
        .navigationBarTitle("Summary")
    }
}

struct ResultsView_Previews: PreviewProvider
{
    static var previews: some View
    {
    ResultsView(salary: .constant("100000"))
    }
}


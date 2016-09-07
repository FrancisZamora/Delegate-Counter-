//
//  BarViewController.swift
//  delegate counter
//  Created by Francis Zamora on 4/16/16.
//  Copyright © 2016 Francis Zamora . All rights reserved.
//Copyright [2016] [Francis Zamora]
// Special thanks to Emmanuel for helping me with this whole thing
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at

//http://www.apache.org/licenses/LICENSE-2.0

//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//

//  Created by Francis Zamora on 4/21/16.
//  Copyright © 2016 Francis All rights reserved.
//

import Foundation
//
//  BarViewController.swift
//  delegate counter
//
//  Created by Francis Zamora on 4/21/16.
//  Copyright © 2016 Francis  All rights reserved.
//

import Foundation
//import Cocoa
import Charts

public class BarViewController: UIViewController
{
    @IBOutlet var barChartView: BarChartView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let xs = Array(1..<2).map { return Double($0) }

        let ys1 = xs.map { i in return (Double(i * 2807 )) }
        let ys2 = xs.map { i in return (Double(i * 1894 )) }
        let yse1 = ys1.enumerate().map { idx, i in return BarChartDataEntry(value: i, xIndex: idx) }
        let yse2 = ys2.enumerate().map { idx, i in return BarChartDataEntry(value: i, xIndex: idx) }
        
        let data = BarChartData(xVals: xs)
        let ds1 = BarChartDataSet(yVals: yse2, label: "Bernie")
        ds1.colors = [NSUIColor.blueColor()]
        data.addDataSet(ds1)
        
        
        let ds2 = BarChartDataSet(yVals: yse1, label: "Hillary(Democratic Nominee)")
        ds2.colors = [NSUIColor.orangeColor()]
        data.addDataSet(ds2)
        self.barChartView.data = data
        let leftAxis = barChartView.leftAxis
        leftAxis.axisMinValue = 0
        let rightAxis = barChartView.rightAxis
        rightAxis.axisMinValue = 0
        leftAxis.axisMaxValue = 3000
        rightAxis.axisMaxValue = 3000
        self.barChartView.gridBackgroundColor = NSUIColor.whiteColor()
        self.barChartView.descriptionText = ""
           }
    
    
     public func viewWillAppear()
    {
        self.barChartView.animate(xAxisDuration: 1.0, yAxisDuration: 1.0)
    }
    
    public func initWithCoder() {
        
    }
    
    
}

//
//  Bernie.swift
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
import Charts

public class Bernie: UIViewController
{
    @IBOutlet var barChartView: BarChartView!
    public override func viewDidLoad() {
        super.viewDidLoad();
        let xs = Array(1..<2).map { return Double($0) }
    
        let ys1 = xs.map { i in return (Double(i * 564 )) }
        let ys2 = xs.map { i in return (Double(i * 1107 )) }
        let ys3 = xs.map { i in return (Double(i * 153 )) }
        let yse1 = ys1.enumerate().map { idx, i in return BarChartDataEntry(value: i, xIndex: idx) }
        let yse2 = ys2.enumerate().map { idx, i in return BarChartDataEntry(value: i, xIndex: idx) }
        let yse3 = ys3.enumerate().map { idx, i in return BarChartDataEntry(value: i, xIndex: idx) }
    let data = BarChartData(xVals: xs)
    let ds1 = BarChartDataSet(yVals: yse1, label: "Cruz(Dropped Out)")
    ds1.colors = [NSUIColor.redColor()]
    data.addDataSet(ds1)
    
    //NEXT STATE ELECTION APRIL 26th && 1237 DELEGATES NEEDED FOR NOMINATION
    let ds2 = BarChartDataSet(yVals: yse2, label: "Trump(Republican Nominee)")
    ds2.colors = [NSUIColor.yellowColor()]
    data.addDataSet(ds2)
    
    
    let ds3 = BarChartDataSet(yVals: yse3, label: "Kasich(Dropped Out)")
    ds3.colors = [NSUIColor.purpleColor()]
    data.addDataSet(ds3)
    
    
    self.barChartView.data = data
    let leftAxis = barChartView.leftAxis
    leftAxis.axisMinValue = 0
    let rightAxis = barChartView.rightAxis
    rightAxis.axisMinValue = 0
    leftAxis.axisMaxValue = 1237
    rightAxis.axisMaxValue = 1237
    self.barChartView.gridBackgroundColor = NSUIColor.whiteColor()
    self.barChartView.descriptionText = ""
    }
    
}

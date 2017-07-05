//
//  Trophy.swift
//  NumberShapes Gym
//
//  Created by Andrew Fenner on 2/1/16.
//  Copyright © 2016 Andrew Fenner. All rights reserved.
//

import Foundation
import UIKit


var SettingsView = settings()

class settings: UIView
{
    
    var additionexplanations = ["Single digit sums there the first number is greater than the second number.  Ex: \"5+3\"","2+5 Single digit sums where the second number is greater than the first","10+5 Adding to the number ten","7+10 Adding ten to a number","12+3 Adding a single digit to a number greater than ten","4+13 Adding a number greater than ten to a single digit number","8+6 Single digit addition that crosses ten","7+9 Addition sums that cross ten where the first number is smaller"]
    
    var subtractionexplanations = ["Ex: \"7-2\" Subtracting a small number from a single number","Ex: "]

    
    var RowArr: [row] = []

    var playarray: [Int]
    {
        var a: [Int] = []
        
        for index in 0...7
        {
            if RowArr[index].Switch.isOn() == true
            {
                a.append(RowArr[index].Switch.tag)
            }
        }

        return a
    }
    
    
    
    func energize(rect: CGRect)
    {
        

        let settingw = 6/7*rect.width
        let settingh = 6/7*rect.height
        let settingy = 1/8*settingh
        let settingx = rect.width/2 - settingw/2
        
        let settingsframe = CGRect(x: settingx, y: settingy, width: settingw, height: settingh)
        
        
        self.frame = settingsframe
        
        
        for index in 0...7
        {
            
            let Row = row()
            
            Row.energize(self.frame, text: additionexplanations[index], Index: index)
            
            RowArr.append(Row)
            
            self.addSubview(Row)
            
            Row.Switch.tag = index
            
        }
        
    }
    
}




class row: UIView
{
 
    var lbl = UILabel()
    var Switch = SevenSwitch()
    var trophy = UIImageView()
    
    func energize(rect: CGRect,text: String,Index: Int)
    {
        
        let rowx = CGFloat(0)
        let roww = rect.width
        let rowh = rect.height/12
        let dy = rect.height/8
        let rowy = CGFloat(Index)*dy
        
        self.frame = CGRect(x: rowx, y: rowy, width: roww, height: rowh)
        
        Switch.frame = CGRect(x: roww - 2*rowh, y: 1/4*rowh, width: rowh, height: 1/2*rowh)
        
        Switch.offLabel.text = "Off"
        Switch.offLabel.font = UIFont(name: "ChalkBoard SE", size: 1/5*rowh)
        Switch.onLabel.textColor = UIColor.whiteColor()
        Switch.onLabel.font = UIFont(name: "ChalkBoard SE", size: 1/5*rowh)
        Switch.onLabel.text = "On"
        Switch.on = true
        Switch.onTintColor = UIColor.grayColor()
        Switch.shadowColor = UIColor.clearColor()
        
        self.addSubview(Switch)
        
        let lblx = 2*rowh
        let lblh = rowh
        let lblw = roww-lblx
        
        lbl.frame = CGRect(x: 1.5*lblh, y: 0, width: lblw-2*rowh, height: lblh)

        
        self.addSubview(lbl)
        
        
        lbl.font = UIFont(name: "ChalkBoard SE", size: 2/7*rowh)

        lbl.text = text
        
        trophy.frame = CGRect(x: 0, y: 0, width: rowh, height: rowh)
        trophy.image = UIImage(named: "GoldTrophy")
        self.addSubview(trophy)
        
        
        
    }
    
    
    
    
}



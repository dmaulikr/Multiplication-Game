//
//  Trophy.swift
//  NumberShapes Gym
//
//  Created by Andrew Fenner on 2/1/16.
//  Copyright © 2016 Andrew Fenner. All rights reserved.
//

import Foundation
import UIKit



class results: UIView
{
    
    let lvlname = ["Novice","Learner","Veteran","Hero","Expert","Master","Champion","Legend"]
    
    var trophy = SpringImageView()
    
    func energize(rect: CGRect,score: Int)
    {
        self.frame = rect
        
        for index in 0...8
        {
            let CGIndex = CGFloat(index)
            
            let column = SpringImageView()
            let colw = self.frame.width/10
            let dx = 1.25*colw
            let dy = self.frame.height/10
            let colx = CGIndex*dx
            let colh = (CGIndex + 1)*dy
            let coly = self.frame.height - colh
            
            column.frame = CGRect(x: colx, y: coly, width: colw, height: colh)
            self.addSubview(column)
            column.animation = "slideRight"
            column.animate()
                        
        }
        
        
    }
    
    
    
    
}
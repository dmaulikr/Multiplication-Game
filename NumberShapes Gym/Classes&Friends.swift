//
//  PinchHandler.swift
//  2D NumberLine
//
//  Created by Andrew Fenner on 1/6/16.
//  Copyright © 2016 Andrew Fenner. All rights reserved.
//

import Foundation
import UIKit

class pinchhandler: UIPinchGestureRecognizer
{
    
    func initialize()
    {
        self.cancelsTouchesInView = false
    }

    
    func GetNewN(minpossibleN: Int, scale: CGFloat, n: Int) -> Int
    {
        self.cancelsTouchesInView = false
        
        let newN = Int(CGFloat(n)*1/sqrt(scale))
        
        if newN < minpossibleN
        {
            return n
        }
        else if newN <= 5
        {
            return 5
        }
        else if newN >= 100
        {
            return 100
        }
        else
        {
            return newN
        }
    }
}


func labelsevery(n: Int) -> Int
{
    var lblsevery = 1
    
    if 20 < n && n <= 40
    {
        lblsevery = 2
    }
    else if 40 < n && n <= 100
    {
        lblsevery = 5
    }

    
    return lblsevery
    
}

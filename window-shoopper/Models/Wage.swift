//
//  Wage.swift
//  window-shoopper
//
//  Created by Yves Fernandes on 8/1/17.
//  Copyright © 2017 Kartech LDA. All rights reserved.
//

import Foundation

class Wage {
    class  func getHours(forWage wage:Double, forPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}

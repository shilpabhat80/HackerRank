//
//  EasySolution.swift
//  LeetCode
//
//  Created by Shilpa Bhat on 11/7/17.
//  Copyright © 2017 Shilpa Bhat. All rights reserved.
//

import Foundation

class EasySolution {
    
    static func mySqrt(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        
        var index = 2
        var result = index * index
        while (result <= x )
        {
            if result == x {
                return index
            }
            index += 1
            result = index * index
        }
        return index - 1
    }
    
    static func reverse(_ x: Int) -> Int {
        var revNum = 0
        let isNeg = x < 0
        
        var x = x
        if isNeg {
            x = -x
        }
        while x > 0 {
            revNum = revNum * 10 + (x % 10)
            x = x / 10
        }
        if isNeg {
            revNum = -revNum
        }
        return revNum
    }
    
    static func isPalindrome(_ x: Int) -> Bool {
        let revNum = reverse(x)
        return x == revNum
    }
    
    
    static func isPalindromeString(_ s: String) -> Bool {
        
        // get the string after removing spaces and special characters
        var str = s.lowercased()
        str = str.components(separatedBy: CharacterSet.alphanumerics.inverted).joined()

        // reverse and compare
        let revStr = String(str.characters.reversed())
        return str == revStr
    }
    
    static func singleNumber(_ nums: [Int]) -> Int {
        
        for i in 0..<
        
        
    }

}

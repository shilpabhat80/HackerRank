//
//  LeetCodeTests.swift
//  LeetCodeTests
//
//  Created by Shilpa Bhat on 11/7/17.
//  Copyright © 2017 Shilpa Bhat. All rights reserved.
//

import XCTest
@testable import LeetCode

class LeetCodeTests: XCTestCase {
    
    func testReverseNumber() {
        XCTAssertEqual(EasySolution.reverse(21), 12)
        XCTAssertEqual(EasySolution.reverse(-1234), -4321)
        XCTAssertEqual(EasySolution.reverse(1534236469), 9646324351)
        
    }
    
    func testPalindromeNumber() {
        XCTAssertTrue(EasySolution.isPalindrome(121))
        XCTAssertTrue(EasySolution.isPalindrome(-2147447412))
        XCTAssertTrue(EasySolution.isPalindrome(1210))
    }
   
    func testSQRT() {
        XCTAssertEqual(EasySolution.mySqrt(4), 2)
        XCTAssertEqual(EasySolution.mySqrt(1), 1)
        XCTAssertEqual(EasySolution.mySqrt(9), 3)
        XCTAssertEqual(EasySolution.mySqrt(10), 3)
   }
    
    func testPalindromeString() {
        XCTAssertTrue(EasySolution.isPalindromeString("A man, a plan, a canal: Panama"))
        XCTAssertTrue(EasySolution.isPalindromeString("race a car"))
    }
}

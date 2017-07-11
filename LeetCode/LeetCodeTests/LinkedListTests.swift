//
//  LinkedListTests.swift
//  LeetCode
//
//  Created by Shilpa Bhat on 11/7/17.
//  Copyright © 2017 Shilpa Bhat. All rights reserved.
//

import XCTest

class LinkedListTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDeleteDuplicates() {

        let input = [1, 2, 2, 3, 4]
        let output = [1, 2, 3, 4]
        let head = LinkedList.insertElements(input)
        let res = LinkedList.deleteDuplicates(head)
        let result = LinkedList.array(res)
        XCTAssertEqual(result, output)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

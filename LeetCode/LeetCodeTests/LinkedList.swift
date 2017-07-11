//
//  LinkedList.swift
//  LeetCode
//
//  Created by Shilpa Bhat on 11/7/17.
//  Copyright © 2017 Shilpa Bhat. All rights reserved.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val:Int) {
        self.val = val
        self.next = nil
    }
}

class LinkedList {
    
    static func insertElements(_ arr:[Int]) -> ListNode? {
        
        var result:ListNode?
        var tempRes:ListNode?
        
        arr.forEach { (val) in
            let newNode = ListNode(val)
            if (result == nil) {
                result = newNode
                tempRes = result
            }
            else {
                tempRes?.next = newNode
                tempRes = tempRes?.next
            }
        }
        return result
    }
    
    static func array(_ head: ListNode?) -> [Int] {
        var list = [Int]()
        
        var temp = head
        while temp != nil {
            list.append((temp?.val)!)
            temp = temp?.next
        }
        return list
    }
    
    static func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // guard var l1 = l1, var l2 = l2 else {
        //     return nil
        // }
        
        var result:ListNode?
        var tempRes:ListNode?
        var temp1 = l1
        var temp2 = l2
        
        while temp1 != nil && temp2 != nil {
            var newNode:ListNode
            if temp1!.val <= temp2!.val {
                newNode = ListNode(temp1!.val)
                temp1 = temp1?.next
            } else {
                newNode = ListNode(temp2!.val)
                temp2 = temp2?.next
            }
            
            if (result == nil) {
                result = newNode
                tempRes = result
            } else {
                tempRes?.next = newNode
                tempRes = tempRes?.next
            }
        }
        
        while temp1 != nil {
            let newNode = ListNode((temp1?.val)!)
            if (result == nil) {
                result = newNode
                tempRes = result
            }
            else {
                tempRes?.next = newNode
                tempRes = tempRes?.next
            }
            temp1 = temp1!.next
        }
        
        while temp2 != nil {
            let newNode = ListNode((temp2?.val)!)
            if (result == nil) {
                result = newNode
                tempRes = result
            }
            else {
                tempRes?.next = newNode
                tempRes = tempRes?.next
            }
            temp2 = temp2!.next
        }
        
        return result
    }
    
    static func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        guard head != nil else { return head }

        guard head?.next != nil else { return head }
        
        var prev = head
        var cur = prev?.next
        
        while cur != nil {
            if prev?.val == cur?.val {
                prev?.next = cur?.next
            }
            else {
                prev = prev?.next
            }
            cur = prev?.next
        }
        return head
    }
    
}

//: Playground - noun: a place where people can play

import UIKit

public func getLine() ->String {
    return readLine()!
}
/// Read line from standard input
///:returns: string
public func readString() -> String {
    return getLine()
}

/// Read line from standard input and convert to integer
///:returns: integer value
public func readInt() -> Int {
    return Int(getLine())!
}

/// Read line and convert to array of strings (words)
///:returns: array of strings
public func readStrings() -> [String] {
    return getLine().components(separatedBy: CharacterSet.whitespaces)
}

/// Read line and convert to array of integers
///:returns: array of integers
public func readInts() -> [Int] {
    let words: [String] = readStrings()
    return words.map { Int($0)! }
}

func meanMedianMode(_ n:Int, _ numbers:[Int]) {
    var sum:Float = 0.0
    var numberCountDict = [Int:Int]()
    

    for number in numbers {
        sum += Float(number)
        
        if let count = numberCountDict[number] {
            numberCountDict[number] = count + 1
        } else {
            numberCountDict[number] = 1
        }
    }
    
    print("\(sum/Float(n))")
    
    
    let med = n/2
    if n % 2 == 0 {
        print("\(Float(numbers[med] + numbers[med - 1])/2.0)")
    }
    else {
        print("\(numbers[med])")
    }
    
    var valueFound = false
    for number in numbers {
        if numberCountDict[number]! > 1 {
            print("\(number)")
            valueFound = true
            break
        }
    }
    
    if valueFound == false {
        print("\(numbers.first!)")
    }
}

let n:Int = 10
var numbers:[Int] = [64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060]

numbers = numbers.sorted(by: { $0 < $1 })

meanMedianMode(n, numbers)

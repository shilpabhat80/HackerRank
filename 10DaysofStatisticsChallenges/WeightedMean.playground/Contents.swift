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

public func readLn<T>() -> T {
    let string = getLine()
    if (T.self as? String.Type != nil) {
        return string as! T
    } else if (T.self as? Int.Type != nil) {
        return Int(string)! as! T
    } else if (T.self as? [String].Type != nil) {
        return string.components(separatedBy: CharacterSet.whitespaces) as! T
    } else if (T.self as? [Int].Type != nil) {
        let words: [String] = readLn()
        return (words.map { Int($0)! }) as! T
    }
    return string as! T
}

extension Float {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }
}

var n:Int = 10
var x:[Int] = [10, 40, 30, 50, 20, 10, 40, 30, 50, 20]
var w:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var sumXW:Float = 0
var sumW:Float = 0
for i in 0 ..< n {
    sumXW += Float(x[i] * w[i])
    sumW += Float(w[i])
}

var weightedMean:Float = (sumXW/sumW).roundTo(places:1)
print("\(weightedMean)")
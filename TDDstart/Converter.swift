//
//  File.swift
//  TDDstart
//
//  Created by SANGMIN NAM on 2022/07/03.
//

import Foundation

class Converter {
    func convert(_ number: Int) -> String {
        var result = ""
        var localNumber = number
        if localNumber >= 10 {
            result += "X"
            localNumber -= 10
        }
        if localNumber >= 5 {
            result += "V"
            localNumber = localNumber - 5
        }
        result += String(repeating: "I", count: localNumber)
        return result
    }
}

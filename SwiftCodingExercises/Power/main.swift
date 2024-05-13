//
//  main.swift
//  Power
//
//  Created by Alejandro Robles on 13/05/24.
//

import Foundation

func power(base: Int, power: Int) -> Int? {

    guard power != 0 else { return 1 }
    guard power >= 0 else { return nil }
    guard base != 0, base != 1 else { return base }

    var result = 1

    for _ in 1...power {
        result = result * base
    }

    return result
}

func powerFunc(base: Int, power: Int) -> Int? {
    var result: Int?
    
    if power < 0 {
        result = nil
    } else if base == 0 {
        return 0
    } else {
        result = 1
        for _ in 0..<power {
            result = (result ?? 1) * base
        }
    }
    return result
}


print(power(base: 5, power: 3) ?? 0) // 125
print(power(base: 0, power: 7) ?? 0) // 0
print(power(base: -17, power: 0) ?? 0) // 1
print(power(base: 5, power: -3)) // nil
print(power(base: 17, power: 1) ?? 0) // 17
print(power(base: 0, power: 500) ?? 0) // 0
print(power(base: 1, power: 500) ?? 0) // 1
print(power(base: -2, power: 5) ?? 0) // -32

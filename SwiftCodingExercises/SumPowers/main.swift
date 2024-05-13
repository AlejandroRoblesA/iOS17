//
//  main.swift
//  SumPowers
//
//  Created by Alejandro Robles on 13/05/24.
//

import Foundation

func sum(base: Int, power: Int) -> Int? {
    var result = 0
    for iteration in 1...base {
        result = result + (getPower(base: iteration, power: power) ?? 0)
    }
    
    return result
}

func getPower(base: Int, power: Int) -> Int? {

    guard power != 0 else { return 1 }
    guard power >= 0 else { return nil }
    guard base != 0, base != 1 else { return base }

    var result = 1

    for _ in 1...power {
        result = result * base
    }

    return result
}

print(sum(base: 5, power: 2) ?? 0)
print(sum(base: 7, power: 3) ?? 0)

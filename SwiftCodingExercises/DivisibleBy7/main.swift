//
//  main.swift
//  DivisibleBy7
//
//  Created by Alejandro Robles on 07/05/24.
//

import Foundation

func divisibleBy7(number: Int) -> String {
    return "I am the number \(number), and I am \(number % 7 == 0 ? "" : "not ")divisible by 7."
}

print(divisibleBy7(number: 0))
print(divisibleBy7(number: -17))
print(divisibleBy7(number: 7))
print(divisibleBy7(number: 14))
print(divisibleBy7(number: -210))
print(divisibleBy7(number: 1))
print(divisibleBy7(number: 77))

//
//  main.swift
//  RandomBingo
//
//  Created by 이재희 on 2023/06/28.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice = 0

while true {
    guard let input = readLine(), let num = Int(input) else {
        print("Try again")
        continue
    }
    myChoice = num
    if computerChoice == myChoice {
        print("Bingo")
        break
    } else if computerChoice > myChoice {
        print("Up")
    } else {
        print("Down")
    }
}

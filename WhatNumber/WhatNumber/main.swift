//
//  main.swift
//  WhatNumber
//
//  Created by pylounge on 13.08.2020.
//  Copyright © 2020 pylounge. All rights reserved.
//

import Foundation

var startNewGame: Bool = true
while startNewGame {
    
    let randomNumber = UInt8(arc4random_uniform(100))
    
    print("Компьютер случайным образом загадал число. Вам нужно отгадать его!")
    var correctNumber: Bool = false
    while !correctNumber{
        print("Введите ваш вариант и нажмите Enter")
        let myNumber =  UInt8(readLine()!)!
        
        switch myNumber {
        case randomNumber:
            correctNumber = true
            print("Вы угадали!")
        case _ where myNumber < randomNumber:
            print("Ваш вариант меньше")
        case _ where myNumber > randomNumber:
            print("Ваш вариант больше")
        default:
            break
        }
    }
    
    print("Хотите ли вы повторить игру? Если да, то введите Y")
    let newGame = readLine()
    if !(["y", "Y"].contains(newGame!)) {
        // if (newGame!.uppercased() != "Y")
        startNewGame = false
    }
}

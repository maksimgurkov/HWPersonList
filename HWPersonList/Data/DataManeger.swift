//
//  DataManeger.swift
//  HWPersonList
//
//  Created by Максим Гурков on 06.04.2022.
//

class DataManager {
    
   static let data = DataManager()
    
    let names = [
        "Maxim",
        "Vladimir",
        "Ivan",
        "Bob",
        "Nikolay",
        "Petr",
        "Sergey",
        "Jon",
        "Steven",
        "Carl"
    ]
    let surnames: [String] = [
        "Ivanov",
        "Petrov",
        "Sidorov",
        "Black",
        "Smith",
        "Butler",
        "Jan-kin",
        "Murphy",
        "Sorokin",
        "Smirnov"
    ]
    let phons: [String] = [
        "8(999)0000000",
        "8(111)1111111",
        "8(222)2222222",
        "8(333)3333333",
        "8(444)4444444",
        "8(555)5555555",
        "8(666)66666666",
        "8(777)7777777",
        "8(888)88888888",
        "8(000)99999999"
    ]
    let emails: [String] = [
        "zzzzz@mail.com",
        "xxxxx@mail.com",
        "ccccc@mail.com",
        "vvvvv@mail.com",
        "bbbbb@mail.com",
        "nnnnn@mail.com",
        "aaaaa@mail.com",
        "sssss@mail.com",
        "ddddd@mail.com",
        "fffff@mail.com"
    ]
    
    private init() {}
}

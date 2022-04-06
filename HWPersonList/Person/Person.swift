//
//  Person.swift
//  HWPersonList
//
//  Created by Максим Гурков on 06.04.2022.
//

struct Person {
    
    let name: String
    let surname: String
    let phon: String
    let email: String
    
    var nameAndSurname: String {
        "\(name) \(surname)"
    }
    
    static func dataPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.data.names.shuffled()
        let surnames = DataManager.data.surnames.shuffled()
        let phons = DataManager.data.phons.shuffled()
        let emails = DataManager.data.emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phon: phons[index],
                                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
    
}

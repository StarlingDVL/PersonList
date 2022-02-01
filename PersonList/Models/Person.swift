//
//  Person.swift
//  PersonList
//
//  Created by Юрий Скворцов on 01.02.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        
        let shuffledNames = DataManager.data.names.shuffled()
        let shufflesSurnames = DataManager.data.surnames.shuffled()
        let shuffledEMails = DataManager.data.emails.shuffled()
        let shuffledPhones = DataManager.data.phoneNumbers.shuffled()
        
        var persons: [Person] = []
        
        for index in 0..<shuffledNames.count {
            let person = Person(
                name: shuffledNames[index],
                surname: shufflesSurnames[index],
                email: shuffledEMails[index],
                phoneNumber: shuffledPhones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

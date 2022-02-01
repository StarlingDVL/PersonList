//
//  Person.swift
//  PersonList
//
//  Created by Юрий Скворцов on 01.02.2022.
//

struct Person {
    let name: String
    let surname: String
    let eMail: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        let data = DataManager()
        
        let shuffledNames = data.names.shuffled()
        let shufflesSurnames = data.surnames.shuffled()
        let shuffledEMails = data.eMaeils.shuffled()
        let shuffledPhones = data.phoneNumbers.shuffled()
        
        var persons: [Person] = []
        
        for index in 0...shuffledNames.count {
            let person = Person(
                name: shuffledNames[index],
                surname: shufflesSurnames[index],
                eMail: shuffledEMails[index],
                phoneNumber: shuffledPhones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

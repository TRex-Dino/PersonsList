//
//  Person.swift
//  PersonsList
//
//  Created by Dmitry on 13.04.2021.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        name + " " + surname
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons = [Person]()
        let dataManager = DataManager()
        
        while dataManager.listOfNames.count > 0,
              dataManager.listOfSurnames.count > 0,
              dataManager.listOfEmails.count > 0,
              dataManager.listOfPhones.count > 0 {
            let name = dataManager.listOfNames.remove(at: Int.random(in: 0...dataManager.listOfNames.count-1))
            let surname = dataManager.listOfSurnames.remove(at: Int.random(in: 0...dataManager.listOfSurnames.count-1))
            let email = dataManager.listOfEmails.remove(at: Int.random(in: 0...dataManager.listOfEmails.count-1))
            let phone = dataManager.listOfPhones.remove(at: Int.random(in: 0...dataManager.listOfPhones.count-1))
            persons.append(Person(name: name, surname: surname, email: email, phone: phone))
        }
        return persons
    }
    
}

//
//  DataManager.swift
//  PersonsList
//
//  Created by Dmitry on 13.04.2021.
//

class DataManager {
    let listOfNames = [ "Ja",
                        "Ba",
                        "Mu",
                        "Su",
                        "Lu",
                        "Gu",
                        "Pu"
    ]
    
    let listOfSurnames = [ "Go",
                           "Po",
                           "Jo",
                           "Io",
                           "Lo",
                           "Mau"
    ]
    
    let listOfEmails = [ "1@gmail.com",
                         "2@gmail.com",
                         "3@gmail.com",
                         "4@gmail.com",
                         "5@gmail.com",
                         "6@gmail.com",
                         "7@gmail.com",
    ]
    
    let listOfPhones = [ "0",
                         "1",
                         "2",
                         "3",
                         "4",
                         "5",
                         "6",
    ]
    
    func getPersonsList() -> [Person] {
        var persons = [Person]()
        
        let quantityPersons = min(listOfNames.count, listOfSurnames.count)
        for _ in 1...quantityPersons {
            guard let name = listOfNames.randomElement(),
                  let surname = listOfSurnames.randomElement(),
                  let email = listOfEmails.randomElement(),
                  let phone = listOfPhones.randomElement()
            else { break }
            
            persons.append(Person(name: name,
                                  surname: surname,
                                  email: email,
                                  phone: phone))
        }
        return persons
    }
}

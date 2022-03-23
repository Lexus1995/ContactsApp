//
//  Contact.swift
//  ContactsApp
//
//  Created by  Aliaksei on 23.03.2022.
//

struct Person {
    
    var name: String
    var surname: String
    var telNumber: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataManager {
    
    private let names: [String] = ["Tom", "Mickael", "John", "Sam", "Adam", "Liza", "Sara", "Ann", "Elizabeth", "Lindsey"]
    private let surnames: [String] = ["Smith", "Bush", "Connor", "Klinton", "Adams", "Black", "Johns", "Hefner", "Parker", "Jobs"]
    private let telNumbers: [String] = ["1234567", "2345678", "3456789", "4567890", "5678901", "6789012", "7890123", "8901234", "9012345", "0123456"]
    private let emails: [String] = ["warg@fwegw.com", "hghw24@aegq.com", "sdhstj@hew.com", "fhsj@gsdg.com", "fbxd@sg.com", "bzd@fs.com", "vdbb@agg.com", "zdh@t3d.com", "stjrj@bxb.com", "vszgr@ueg.com"]

    var persons: [Person] {
        let shuffledNames = names.shuffled()
        let shuffledSurnames = surnames.shuffled()
        let shuffledTelNumbers = telNumbers.shuffled()
        let shuffledEmails = emails.shuffled()
        
        var persons: [Person] = []
        var counter = 0
        
        for _ in names {
            persons.append(Person(
                name: shuffledNames[counter],
                surname: shuffledSurnames[counter],
                telNumber: shuffledTelNumbers[counter],
                email: shuffledEmails[counter]
                )
            )
            counter += 1
        }
        return persons
    }
    
    init() {}
}

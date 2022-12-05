//
//  struct.swift
//  contactss
//
//  Created by tosy on 4.12.22.
//

import UIKit

protocol ProtocolContact {
    var firstName: String { get set }
    var lastName: String { get set }
    var email: String { get set}
    var phoneNumber: String { get set}
}

struct Person: ProtocolContact {
    var firstName: String 
    var lastName: String
    var email: String
    var phoneNumber: String
}

let firstName = [ "Ivanov", "Petrov", "Sidorov", "Rusakovich", "Dorofeev", "Mahnach", "Divin", "Ttrofimovich", "Revazov", "Fomchenko" ]
 let lastName = ["Alex", "Arkadi", "Anton", "Andrei", "Vadim", "Valeria", "Dmitry", "Evgeni", "Sam", "Artur"]
let phoneNumber = ["+375291234561", "+375291234562", "+375291234563", "+375291234564", "+375291234565", "+375291234566", "+375291234567", "+375291234568", "+375291234569","+375291234510"]
let email = ["mail1@mail.io", "mail2@mail.io", "mail3@mail.io", "mail4@mail.io", "mail5@mail.io", "mail6@mail.io", "mail7@mail.io", "mail8@mail.io", "mail9@mail.io","mail10@mail.io"]



// var firstLastName: [String] = []
//func randomContacts () {
//    for _ in 1...10 {
//        firstLastName.append((firstName.randomElement() ?? "") + " " + (lastName.randomElement() ?? ""))
//        print(firstLastName)
//    }
//}

//
//  ViewController.swift
//  contactss
//
//  Created by tosy on 4.12.22.
//

import UIKit

class ViewController: UIViewController {
    let firstName = ["Ivanov", "Petrov", "Sidorov", "Rusakovich", "Dorofeev", "Mahnach", "Divin", "Ttrofimovich", "Revazov", "Fomchenko"]
    let lastName = ["Alex", "Arkadi", "Anton", "Andrei", "Vadim", "Valeria", "Dmitry", "Evgeni", "Sam", "Artur"]
    var firstLastName: [String] = []
    func randomContacts() {
        for _ in 1 ... 10 {
            firstLastName.append((firstName.randomElement() ?? "") + " " + (lastName.randomElement() ?? ""))
            print(firstLastName)
        }
    }
       
    private var contacts = [ProtocolContact]()
    
    override func viewDidLoad() {
        randomContacts()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstLastName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let reuseCell = tableView.dequeueReusableCell(withIdentifier: "MyCell") {
            cell = reuseCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "MyCell")
        }
        configure(cell: &cell, for: indexPath)
        return cell
    }
    
    private func configure(cell: inout UITableViewCell, for indexPath: IndexPath) {
        var configuration = cell.defaultContentConfiguration()
        configuration.text = firstLastName[indexPath.row]
        cell.contentConfiguration = configuration
    }

    private func addContact() {
        contacts.append(Contact(title: "tosy", number: "+375291036919"))
        contacts.append(Contact(title: "valeri", number: "+375296195663"))
        contacts.append(Contact(title: "ted baker", number: "+30200004"))
        contacts.sort { $0.title < $1.title }
    }
}

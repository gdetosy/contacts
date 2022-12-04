//
//  ViewController.swift
//  contactss
//
//  Created by tosy on 4.12.22.
//

import UIKit

class ViewController: UIViewController {
    private var contacts = [ProtocolContact]()
    override func viewDidLoad() {
       addContact()
            super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
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
        configuration.text = contacts[indexPath.row].title
        configuration.secondaryText = contacts[indexPath.row].number
        cell.contentConfiguration = configuration
    }
    private func addContact() {
        contacts.append(Contact(title: "tosy", number: "+375291036919"))
        contacts.append(Contact(title: "valeri", number: "+375296195663"))
        contacts.append(Contact(title: "ted baker", number: "+30200004"))
        contacts.sort{ $0.title < $1.title }
        
    }
    
    
    
    
    
}

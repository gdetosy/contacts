
import UIKit

class ViewController: UIViewController {
    private var contacts = [ProtocolContact]()

 func prepareForSegue(segue: UIStoryboardSegue, sender: UITableViewCell) {
        switch segue.identifier {
        case "goToPerson" : prepareEditScreen(segue)
        default:
            break
        }
    }

    func prepareEditScreen(_ segue: UIStoryboardSegue) {
        guard let destinationController = segue.destination as? ContactViewController else { return }
        destinationController.updatingData = "dddd123"
    }
    
    
    
    
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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }

    func configure(cell: inout UITableViewCell, for indexPath: IndexPath) {
        var configuration = cell.defaultContentConfiguration()
        configuration.text = contacts[indexPath.row].firstName + " " + contacts[indexPath.row].lastName
        cell.contentConfiguration = configuration
    }

    private func addContact() {
        for item in 1 ... 10 { contacts.append(Person(firstName: firstName.randomElement()!, lastName: lastName.randomElement()!, email: email.randomElement()!, phoneNumber: phoneNumber.randomElement()!))
        }
    }

 
}

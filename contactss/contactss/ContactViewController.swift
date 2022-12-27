//
//  ContactViewController.swift
//  contactss
//
//  Created by tosy on 5.12.22.
//

import UIKit

class ContactViewController: UIViewController {
    var updatingData: String = ""
    @IBOutlet weak var lbl: UILabel!
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }

    private func updateTextFieldData(withText text: String) {
        lbl.text = text
    }

    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       
        }
        // Do any additional setup after loading the view.
        
 
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



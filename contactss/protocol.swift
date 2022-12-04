//
//  struct.swift
//  contactss
//
//  Created by tosy on 4.12.22.
//

import UIKit

protocol ProtocolContact {
    var title: String { get set }
    var number: String { get set }
}

struct Contact: ProtocolContact {
    var title: String
    var number: String
}


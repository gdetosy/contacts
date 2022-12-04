//
//  struct.swift
//  contactss
//
//  Created by tosy on 4.12.22.
//

import Foundation

protocol ProtocolContact {
    var title: String { get set }
    var number: String { get set }
}

struct Contact {
    var title: String
    var number: String
}

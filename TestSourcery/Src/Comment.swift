//
//  Comment.swift
//  TestSourcery
//
//  Created by Frederic Forster on 17.12.20.
//

import Foundation

struct Comment: Value {
    // sourcery: attributeType = .stringAttributeType
    // sourcery: defaultValue = '""'
    var id: String
    // sourcery: attributeType = .stringAttributeType
    // sourcery: defaultValue = '""'
    var content: String
}

//
//  EntityDescribable.swift
//  TestSourcery
//
//  Created by Frederic Forster on 17.12.20.
//

import Foundation
import CoreData

protocol EntityDescribable {
    static var entityDescription: NSEntityDescription { get }
}

public extension NSAttributeDescription {
    convenience init(
        name: String,
        attributeType: NSAttributeType,
        isOptional: Bool = false,
        defaultValue: Any?
    ) {
        self.init()
        self.name = name
        self.attributeType = attributeType
        self.isOptional = isOptional
        self.defaultValue = defaultValue
    }
}

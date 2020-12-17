//
//  ManagedObject.swift
//  TestSourcery
//
//  Created by Frederic Forster on 17.12.20.
//

import Foundation
import CoreData

protocol ManagedObject {
    associatedtype AnyValue: Value

    var value: AnyValue { get }

    init(value: AnyValue, context: NSManagedObjectContext)

    func update(from value: AnyValue) throws
}

enum ManagedObjectError: Error {
    case attributeShouldBeUnique(String)
}

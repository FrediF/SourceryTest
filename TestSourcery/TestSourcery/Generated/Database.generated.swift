// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Copyright © 2020 taschenentwickler. All rights reserved.
//
import Foundation
import CoreData

@objc(Comment)
public final class CommentManagedObject: NSManagedObject {
	@NSManaged var id: String
	@NSManaged var content: String
}

extension CommentManagedObject: ManagedObject {
	typealias AnyValue = Comment

	var value: AnyValue {
		Comment(
		id: id,
		content: content
		)
	}

	convenience init(value: AnyValue, context: NSManagedObjectContext) {
		self.init(context: context)
		self.id = value.id
		self.content = value.content
	}

	func update(from value: AnyValue) throws {
		guard id == value.id else { throw ManagedObjectError.attributeShouldBeUnique("id") }
		self.content = value.content
	}
}

extension CommentManagedObject: EntityDescribable {
	static var entityDescription: NSEntityDescription {
		let entity = NSEntityDescription()
		entity.name = "Comment"
		entity.managedObjectClassName = "Comment"

		entity.properties = [
			NSAttributeDescription.init(name: "id", attributeType: .stringAttributeType, defaultValue: ""),
			NSAttributeDescription.init(name: "content", attributeType: .stringAttributeType, defaultValue: "")
		]

		entity.indexes = []
		return entity
	}

}


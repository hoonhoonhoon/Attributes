//
//  File.swift
//  Attributes
//
//  Created by eyemac on 2017. 11. 29..
//  Copyright © 2017년 rollmind. All rights reserved.
//

import UIKit

public struct Attributes<Target> {
	let target: Target
	public init(_ target: Target) {
		self.target = target
	}
}

public protocol AttributedStringType {
	associatedtype AttributeType
//	static var attributes: Attributes<AttributeType>.Type { get }
	var attributes: Attributes<AttributeType> { get }
}

extension AttributedStringType {
//	public static var attributes: Attributes<Self>.Type {
//		return Attributes<Self>.self
//	}
	public var attributes: Attributes<Self> {
		return Attributes(self)
	}
}

extension NSObject: AttributedStringType {}

extension StringLiteralType {
	subscript(attributes: [NSAttributedStringKey: Any]) -> NSAttributedString {
		return NSAttributedString(string: self, attributes: attributes)
	}
}

typealias AttributesValue = [NSAttributedStringKey: Any]

func + (lhs: AttributesValue, rhs: AttributesValue) -> AttributesValue {
	var attributes = lhs
	for (key, value) in rhs {
		attributes[key] = value
	}
	return attributes
}

extension Dictionary where Key == NSAttributedStringKey {
	static func foreground(_ color: UIColor) -> AttributesValue {
		return color.attributes.foreground
	}
	static func background(_ color: UIColor) -> AttributesValue {
		return color.attributes.background
	}
}

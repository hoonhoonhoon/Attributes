//
//  NSAttributedString+Operator.swift
//  Attributes
//
//  Created by eyemac on 2017. 11. 29..
//  Copyright © 2017년 rollmind. All rights reserved.
//

import UIKit

extension NSAttributedString {
	public func with(attributes: AttributesValue) -> NSAttributedString {
		let mutable = NSMutableAttributedString(attributedString: self)
		mutable.addAttributes(attributes, range: NSRange(location: 0, length: self.string.count))
		return NSAttributedString(attributedString: mutable)
	}
}

public protocol AttributedStringCompatible {
	var attributedString: NSAttributedString { get }
}

extension AttributedStringCompatible where Self: NSAttributedString {
	public var attributedString: NSAttributedString {
		return self
	}
}

extension NSAttributedString: AttributedStringCompatible {}

public func + (lhs: AttributedStringCompatible, rhs: AttributedStringCompatible) -> NSAttributedString {
	let mutable = NSMutableAttributedString(attributedString: lhs.attributedString)
	mutable.append(rhs.attributedString)
	return NSAttributedString(attributedString: mutable)
}

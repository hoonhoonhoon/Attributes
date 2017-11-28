//
//  NSAttributedString+Operator.swift
//  Attributes
//
//  Created by eyemac on 2017. 11. 29..
//  Copyright © 2017년 rollmind. All rights reserved.
//

import UIKit

extension NSAttributedString {
	func added(_ attributes: AttributesValue) -> NSAttributedString {
		let mutable = NSMutableAttributedString(attributedString: self)
		mutable.addAttributes(attributes, range: NSRange(location: 0, length: self.string.count))
		return NSAttributedString(attributedString: mutable)
	}
}

protocol AttributedStringCompatible {
	var attributedString: NSAttributedString { get }
}

extension AttributedStringCompatible where Self: NSAttributedString {
	var attributedString: NSAttributedString {
		return self
	}
}

extension NSAttributedString: AttributedStringCompatible {}

func + (lhs: AttributedStringCompatible, rhs: AttributedStringCompatible) -> NSAttributedString {
	let mutable = NSMutableAttributedString(attributedString: lhs.attributedString)
	mutable.append(rhs.attributedString)
	return NSAttributedString(attributedString: mutable)
}

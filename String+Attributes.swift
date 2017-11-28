//
//  String+Attributes.swift
//  Attributes
//
//  Created by eyemac on 2017. 11. 29..
//  Copyright © 2017년 rollmind. All rights reserved.
//

import UIKit

extension String: AttributedStringType {
	func with(attributes: AttributesValue) -> NSAttributedString {
		return NSAttributedString(string: self, attributes: attributes)
	}
}

extension Attributes where Target == StringLiteralType {
	func foreground(_ color: UIColor) -> NSAttributedString {
		return self.target.with(attributes: color.attributes.foreground)
	}
	func background(_ color: UIColor) -> NSAttributedString {
		return self.target.with(attributes: color.attributes.background)
	}
}

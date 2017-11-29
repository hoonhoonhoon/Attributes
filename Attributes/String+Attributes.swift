//
//  String+Attributes.swift
//  Attributes
//
//  Created by eyemac on 2017. 11. 29..
//  Copyright © 2017년 rollmind. All rights reserved.
//

import UIKit

extension String: AttributedStringType {}

extension Attributes where Target == StringLiteralType {

	public func foreground(_ color: UIColor) -> NSAttributedString {
		return self.with(attributes: color.attributes.foreground)
	}
	public func background(_ color: UIColor) -> NSAttributedString {
		return self.with(attributes: color.attributes.background)
	}
	public func with(attributes: AttributesValue) -> NSAttributedString {
		return NSAttributedString(string: self.target, attributes: attributes)
	}
	
}

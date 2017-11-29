//
//  UIColor+Attributes.swift
//  Attributes
//
//  Created by eyemac on 2017. 11. 29..
//  Copyright © 2017년 rollmind. All rights reserved.
//

import UIKit

extension Attributes where Target: UIColor {
	public var foreground: AttributesValue {
		return [.foregroundColor: self.target]
	}
	public var background: AttributesValue {
		return [.backgroundColor: self.target]
	}
}

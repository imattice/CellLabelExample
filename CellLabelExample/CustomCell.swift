//
//  CustomCell.swift
//  CellLabelExample
//
//  Created by Ike Mattice on 4/30/19.
//  Copyright © 2019 Ike Mattice. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var detailLabel: UILabel!

	func tapped(isOpen: Bool) {
		print("is Open: \(isOpen)")
		if !isOpen {
			detailLabel.numberOfLines = 0		}
		else {
			detailLabel.numberOfLines = 2		}
	}
}

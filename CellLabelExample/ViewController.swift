//
//  ViewController.swift
//  CellLabelExample
//
//  Created by Ike Mattice on 4/30/19.
//  Copyright © 2019 Ike Mattice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!

	var tableData: [TableData] = [TableData]()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.

		addTableData()
	}

	func addTableData() {
		for _ in 0...3 {
			tableData.append(TableData(isOpen: false))
		}

	}

	struct TableData{
		var isOpen: Bool
	}


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	return 4
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)


		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		guard let cell = tableView.cellForRow(at: indexPath) as? CustomCell else { return }
		let data = tableData[indexPath.row]

		tableView.beginUpdates()
		cell.tapped(isOpen: data.isOpen)
		tableView.endUpdates()

		tableData[indexPath.row].isOpen = !data.isOpen
		tableView.reloadRows(at: [indexPath], with: .fade)

		//		tableView.reloadData()	}
	}

	
}


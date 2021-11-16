//
//  ViewController.swift
//  Demo
//
//  Created by Julie Saby on 09/03/2020.
//  Copyright © 2020 Julie Saby. All rights reserved.
//

import UIKit

extension String {
	var busId: String {
		get {
			var busString = self
			if self.starts(with: "SNC") {
				if let index = busString.lastIndex(of: ":") {
					busString = String(busString.prefix(upTo: index))
				}
			}
			
			if let index = busString.lastIndex(of: ":") {
				let firstPart = busString.prefix(upTo: index)
				return String(firstPart)
			}
			return ""
		}
	}
}

class ViewController: UIViewController {

	@IBOutlet weak var descriptionLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		descriptionLabel.text = "Le ViewController initial"
	}

	@IBAction func showTableViewAction() {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let customTableViewController = storyboard.instantiateViewController(withIdentifier: "customTableViewController") as! CustomTableViewController
		self.navigationController?.pushViewController(customTableViewController, animated: true)
	}
	
}


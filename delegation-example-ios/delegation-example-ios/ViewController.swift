//
//  ViewController.swift
//  delegation-example-ios
//
//  Created by Byrdann Fox on 7/28/15.
//  Copyright (c) 2015 Byrdann Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ClassCommunicationDelegate {
	
	@IBOutlet weak var delegationTextLabel: UILabel!
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let publishingViewController = segue.destinationViewController as! ViewControllerTwo
		if publishingViewController.delegate == nil {
			publishingViewController.delegate = self
		}
	}
	
	func didCommunicate(communication: String) {
		delegationTextLabel.text = communication
	}

}
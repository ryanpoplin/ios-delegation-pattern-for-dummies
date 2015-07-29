//
//  ViewControllerTwo.swift
//  delegation-example-ios
//
//  Created by Byrdann Fox on 7/28/15.
//  Copyright (c) 2015 Byrdann Fox. All rights reserved.
//

import UIKit

protocol ClassCommunicationDelegate {
	func didCommunicate(communication: String)
}

class ViewControllerTwo: UIViewController {

	var delegate: ClassCommunicationDelegate?
	
	@IBOutlet weak var delegationTextField: UITextField!
	
	@IBAction func delegateIt(sender: UIButton) {
		if delegate != nil {
			delegate?.didCommunicate(delegationTextField.text)
		}
	}
	
}
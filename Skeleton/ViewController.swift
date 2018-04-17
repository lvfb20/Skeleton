//
//  ViewController.swift
//  Skeleton
//
//  Created by Work on 4/16/18.
//  Copyright © 2018 LegnaFilloy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		guard let serverUrl = Environment().getServerUrl() else { return }
		print("Url del ambiente: \(serverUrl)")
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


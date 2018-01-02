//
//  ViewController.swift
//  LocoMobileExport
//
//  Created by mineschan on 01/02/2018.
//  Copyright (c) 2018 mineschan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var localizedLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        localizedLabel.text = NSLocalizedString("Hello-World", comment: "Hello-World")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


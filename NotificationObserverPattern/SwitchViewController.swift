//
//  SwitchViewController.swift
//  NotificationObserverPattern
//
//  Created by Ayaan Ruhi on 10/10/18.
//  Copyright © 2018 parth. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func switchStateChanged(_ sender: UISwitch) {
        // MARK: Post notification when state changed
        if switchButton.isOn {
            NotificationCenter.default.post(name: NSNotification.Name(FavoriteViewController.keySwitchOnStateNotification), object: nil)
        } else {
            NotificationCenter.default.post(name: NSNotification.Name(FavoriteViewController.keySwitchOffStateNotification), object: nil)
        }
    }
}

//
//  ViewController.swift
//  NotificationObserverPattern
//
//  Created by Ayaan Ruhi on 10/10/18.
//  Copyright © 2018 parth. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    // MARK: keys for notification
    static let keySwitchOnStateNotification = "keySwitchOnStateNotification"
    static let keySwitchOffStateNotification = "keySwitchOffStateNotification"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObserver()
    }
    
    // MARK: Remove all observer
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    //MARK: Create Observers with key
    func createObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(FavoriteViewController.handleOnStateChangeNotification), name: NSNotification.Name(FavoriteViewController.keySwitchOnStateNotification), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleOffStateChangeNotification), name: NSNotification.Name(FavoriteViewController.keySwitchOffStateNotification), object: nil)
    }
    
    // MARK: Change Background color when switch changed state
    @objc func handleOnStateChangeNotification() {
        self.view.backgroundColor = .blue
    }
    
    @objc func handleOffStateChangeNotification() {
        self.view.backgroundColor = .red
    }
}


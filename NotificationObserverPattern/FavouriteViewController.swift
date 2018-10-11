//
//  ViewController.swift
//  NotificationObserverPattern
//
//  Created by Ayaan Ruhi on 10/10/18.
//  Copyright © 2018 parth. All rights reserved.
//

import UIKit

class FavouriteViewController: UIViewController {
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

    //MARK: Creste Observers with key
    func createObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(FavouriteViewController.handleOnStateChangeNotification), name: NSNotification.Name(FavouriteViewController.keySwitchOnStateNotification), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleOffStateChangeNotification), name: NSNotification.Name(FavouriteViewController.keySwitchOffStateNotification), object: nil)
    }
    
    // MARK: Change Background color when switch changed state
    @objc func handleOnStateChangeNotification() {
        self.view.backgroundColor = .blue
    }
    
    @objc func handleOffStateChangeNotification() {
        self.view.backgroundColor = .red
    }


}


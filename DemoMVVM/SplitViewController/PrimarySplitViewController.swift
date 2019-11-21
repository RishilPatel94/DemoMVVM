//
//  PrimarySplitViewController.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import UIKit

class PrimarySplitViewController: UISplitViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.preferredDisplayMode = .allVisible
        if let navigationController = splitViewController?.viewControllers.last as? UINavigationController {
            navigationController.topViewController?.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
        }
    }
}
extension PrimarySplitViewController: UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}

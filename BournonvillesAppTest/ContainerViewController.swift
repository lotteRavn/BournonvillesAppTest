//
//  ContainerViewController.swift
//  BournonvillesAppTest
//
//  Created by Lotte Ravn on 20/05/16.
//  Copyright © 2016 Lotte Ravn. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var masterView: UIView!
    
    @IBOutlet weak var menuView: UIView!
    
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var rightConstraintTitleMenu: NSLayoutConstraint!
    @IBOutlet weak var rightConstraintTop: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menuTapped(sender: AnyObject) {
        if rightConstraintTitleMenu.constant == 600 {
        showMenu()
        }else{
        noShowMenu()
        }
    }
    
    @IBAction func leftSwipe(sender: UISwipeGestureRecognizer) {
        noShowMenu()
    }

    @IBAction func rightSwipe(sender: UISwipeGestureRecognizer) {
        showMenu()
        
    }
    func showMenu() {
        rightConstraintTop.constant = 0
        rightConstraintTitleMenu.constant = 0
        
        UIView.animateWithDuration(0.3){
            self.view.layoutIfNeeded()
        }

    
    }
    func noShowMenu() {
        rightConstraintTop.constant = 600
        rightConstraintTitleMenu.constant = 600
        
        UIView.animateWithDuration(0.3){
            self.view.layoutIfNeeded()
        }

    
    }
}

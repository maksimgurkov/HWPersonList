//
//  ViewController.swift
//  HWPersonList
//
//  Created by Максим Гурков on 06.04.2022.
//

import UIKit

class TapBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        passingViewController()
       
    }
    
    private func passingViewController() {
        let persone = Person.dataPerson()
        let personListVC = viewControllers?.first as! PersonListViewController
        let generalListVC = viewControllers?.last as! GeneralListViewController
        
        personListVC.persons = persone
        generalListVC.persons = persone



    }


}


//
//  DetailPersoneViewController.swift
//  HWPersonList
//
//  Created by Максим Гурков on 06.04.2022.
//

import UIKit

class DetailPersoneViewController: UIViewController {
    
    @IBOutlet weak var phonePersonLabel: UILabel!
    @IBOutlet weak var emailPersoneLabel: UILabel!
    
    var persons: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = persons.nameAndSurname
        phonePersonLabel.text = persons.phon
        emailPersoneLabel.text = persons.email

        
    }

}

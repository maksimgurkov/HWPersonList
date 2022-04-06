//
//  GeneralListViewController.swift
//  HWPersonList
//
//  Created by Максим Гурков on 06.04.2022.
//

import UIKit

class GeneralListViewController: UITableViewController {
    
    var persons: [Person] = []

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].nameAndSurname
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listPersonCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let persone = persons[indexPath.section]
        switch indexPath.row {
            
        case 0:
            content.text = persone.phon
        default:
            content.text = persone.email
        }
        
        cell.contentConfiguration = content

        return cell
    }
}

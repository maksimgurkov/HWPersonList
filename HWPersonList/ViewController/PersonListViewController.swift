//
//  TableViewController.swift
//  HWPersonList
//
//  Created by Максим Гурков on 06.04.2022.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person] = []

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let persone = persons[indexPath.row]
        
        content.text = persone.nameAndSurname
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPathForSelectedRow {
            let personeDetailVC = segue.destination as! DetailPersoneViewController
            personeDetailVC.persons = persons[index.row]
        }
    }
    

}

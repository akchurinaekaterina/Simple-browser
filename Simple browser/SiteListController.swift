//
//  SiteListController.swift
//  Simple browser
//
//  Created by Ekaterina Akchurina on 22.09.2020.
//

import UIKit

class SiteListController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let browser = storyboard?.instantiateViewController(identifier: "Browser") as? ViewController {
            browser.urlString = websites[indexPath.row]
            navigationController?.pushViewController(browser, animated: true)
        }
    }

}
